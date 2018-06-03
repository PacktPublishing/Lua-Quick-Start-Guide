meta = { } -- Creates table
meta.__add = function(left, right) -- adds meta method
	return left.value + right -- left is assumed to be a table.
end

container = {
	value = 5
}

--result = container + 4 -- ERROR
--print ("result: " .. result)

setmetatable(container, meta) -- Set meta table
result = container + 4 -- Works!
print ("result: " .. result)