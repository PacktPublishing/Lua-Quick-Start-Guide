local profiler = {}
profiler.names = { }
profiler.counts = { }
profiler.times = { }
profiler.timers = { }

profiler.start = function()
	debug.sethook(profiler.private_hook, "c r")
end

profiler.stop = function()
	debug.sethook()
end

profiler.dump = function()
	for k, v in pairs(profiler.names) do
		local out = "function " .. v
		out = out .. " was called "
		out = out .. profiler.counts[k]
		out = out .. " times and took "
		out = out .. profiler.times[k]
		out = out .. " seconds to execute"
		print(out)
	end
end

profiler.private_hook = function(event)
	local info = debug.getinfo(2, "fSn")
	if info.what ~= "Lua" then
		return
	end
	local f = info.func
	if f == profiler.stop then
		return
	end

	if profiler.names[f] == nil and event == "call" then
		profiler.names[f] = info.name
		profiler.counts[f] = 1
		profiler.times[f] = 0.0
		profiler.timers[f] = os.clock()
	elseif profiler.names[f] ~= nil then
		if event == "call" then
			profiler.counts[f] = profiler.counts[f] + 1
			profiler.timers[f] = os.clock()
		elseif event == "return" then
			local t = profiler.times[f];
			local d = os.difftime(profiler.timers[f],os.clock())
			profiler.times[f] = t + d
		end
	end
end -- End private_hook function

return profiler