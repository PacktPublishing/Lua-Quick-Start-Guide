arr = { "a", "b", "c", "d", "e", "f", "g" }
length = #arr
print ("array lenght: " .. length)
for i=1,#arr do
	print (arr[i])
end

arr = { }
arr[0] = "x" -- not counted towards length
arr[1] = "y"
arr[2] = "z"
length = #arr -- length = 2!
print ("array length: " .. length)

arr = { }
arr[1] = "x"
arr[2] = "y"
-- Skipping 3 & 4, at least 2 nils after each other end the array
arr[5] = "z" -- not counted towards length
arr[6] = "w" -- not counted towards length
length = #arr -- length = 2, which is WRONG!
print ("array length: " .. length)