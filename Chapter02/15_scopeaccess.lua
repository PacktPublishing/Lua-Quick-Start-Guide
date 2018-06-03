foo = 7 -- global scope
do
	local bar = 8 -- local scope
	print ("foo: " .. foo)
	print ("bar: " .. bar)
end

foo = 7 -- global
do
	local bar = 8 -- local
end
print ("foo: " .. foo)
--print ("bar: " .. bar) -- error!

foo = 7 -- global
do
	local bar = 8 -- local
	do
		local x = 9 -- nested local
		-- can access foo, bar and x
	end
	-- can access foo and bar
end
-- can only access foo