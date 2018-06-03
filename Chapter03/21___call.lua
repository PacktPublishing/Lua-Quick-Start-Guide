tbl = {
	__call = function(table, val1, val2)
		return "Hello, from functor: " .. (val1 + val2)
	end
}
setmetatable(tbl, tbl)
message = tbl(2, 3); -- Calling the table like a function!
print ("message: " .. message)