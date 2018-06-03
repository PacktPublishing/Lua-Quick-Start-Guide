x = { }
y = { }
z = {
	__index = function(table, key)
		return z[key]
	end,
	__newindex = function(table, key, value)
		z[key] = value
	end
}
setmetatable(x, z)
setmetatable(y, z)
x.foo = "bar" -- Sets "bar" in z
rawset(x, "foo", "raw") -- Sets "raw" in x directly!
print (x.foo) -- raw, lives in x
print (y.foo) -- bar, lives in z