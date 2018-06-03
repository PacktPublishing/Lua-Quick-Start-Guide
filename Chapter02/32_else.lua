print ("Enter your name")
name = io.read()
if #name <= 3 then
	print ("that's a short name, " .. name)
elseif #name <= 6 then
	print (name .. " is an average length name")
else
	print ("that's a long name, " .. name)
end

print ("Enter a number")
x = io.read()
if x % 2 == 0 then
	print (x .. " is even")
else
	print (x .. " is odd")
end