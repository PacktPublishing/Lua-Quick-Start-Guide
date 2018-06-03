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
x.foo = "bar"
print (x.foo)
print (y.foo)
print (z.foo)