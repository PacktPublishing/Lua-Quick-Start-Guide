-- Get debugger.lua from: https://github.com/slembcke/debugger.lua
local debug = require("debugger")

function BuggyAdditionFunction(x1, x2)
	local sum = x1 * x2
	debug()
	return sum
end

local add = BuggyAdditionFunction(2, 3)
print(add)