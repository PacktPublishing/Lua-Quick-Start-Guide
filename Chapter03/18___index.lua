x = {
	foo = "bar"
}
y = { }
print (x.foo) -- bar
print (x.hello) -- nil
print (y.foo) -- nil
print (y.hello) -- nil

z = {
	hello = "world z",
	__index = function(table, key)
		return z[key]
	end
}
w = {
	__index = function(table, key)
		if key == "hello" then
			return "inline world"
		end
		return nil
	end
}
setmetatable(x, z)
setmetatable(y, w)
print (x.foo) -- bar
print (x.hello) -- world z
print (y.foo) -- nil
print (y.hello) -- inline world