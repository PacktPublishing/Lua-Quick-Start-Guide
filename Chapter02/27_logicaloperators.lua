x = true and false -- value is false
y = false and false -- value is false
z = true and true -- value is true
w = 7 and 1 -- value is 1

x = true or false -- value is true
y = false or false -- value is false
z = true or true -- value is true
w = 7 or 1 -- value is 7

function TrueFunction()
	print ("returning true")
	return true
end
function FalseFunction()
	print ("returning false")
	return false
end
x = FalseFunction() and TrueFunction()

x = TrueFunction() and FalseFunction()

x = not true -- false
y = not true or false -- false
z = not not false -- false
w = not (7 + 1) -- false