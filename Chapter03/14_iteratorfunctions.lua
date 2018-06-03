days = { "monday", "tuesday", "wednesday", "thursday" }
function walk(array)
	local index = 0
	return function()
		index = index + 1
		return array[index]
	end
end
for day in walk(days) do
	print (day)
end