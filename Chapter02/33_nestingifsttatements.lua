print ("Enter a number")
x = io.read()
if x == "6" then
	print ("x is six!")
	print ("Enter another number")
	local y = io.read()
	-- Nested if statement begins here
	if y == "6" then
		print ("y is also six!")
	elseif y == "5" then
		print ("y is one less than x")
	else
	print ("x is 6, but y is not!")
end
-- Nested if statement ends here
else
	print ("x is not 6!" .. x)
end