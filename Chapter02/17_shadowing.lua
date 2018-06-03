message = "global-scope"
-- This should print: global-scope
print ("message: " .. message)
do
	-- Shadow the message variable
	local message = "local-scope"
	-- This print uses the variable declared
	-- in this block (shadowing). Should print: local-scope
	print ("message: " .. message)
end
-- The variable that was declared in the local scope
-- of the above block is gone. message now holds
-- the global scope again. Should print: global-scope
print ("message: " .. message)