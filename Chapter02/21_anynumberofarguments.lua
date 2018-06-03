-- Declare the function, takes two arguments
function AddAndPrint(x, y)
	local result = x + y;
	print (x .. "+" .. y .. "=" .. result)
end
-- Call the function a few times
AddAndPrint(2, 3, 7) -- Will print 2+3=5
AddAndPrint(4, 5, 8, 9, 10) -- Will print 4+5=9
AddAndPrint(6, 7, 11, 12, 14) -- Will print 6+7=13

-- Declare the function, takes two arguments
function PrintValues(x, y)
	print ("x: " .. tostring(x) .. ", y: " .. tostring(y))
end
-- Call the function a few times
PrintValues(3, 4) -- will print x: 3, y: 4
PrintValues(1) -- will print x: 1, y: nil
PrintValues() -- will print x: nil, y: nil