container = {
	value = 5,
	__add = function(l, r)
		return l.value + r.value
	end
}
setmetatable(container, container)
result = container + container
print ("result: " .. result)