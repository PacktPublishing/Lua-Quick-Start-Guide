arr = { }
arr[1] = "x"
arr[2] = "y"
-- arr[3] is nil by default
-- arr[4] is nil by default
arr[5] = "z"
arr[6] = "w"
for i=1,6 do
	print (tostring(arr[i]))
end