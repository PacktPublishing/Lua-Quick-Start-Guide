print ("Enter your name")
name = io.read()
if #name <= 3 then
	print ("that's a short name, " .. name)
elseif #name <= 6 then
	print (name .. " is an average length name")
end

print ("Enter a number")
x = io.read()
if x == "0" then
	print ("input is 0!")
elseif x == "1" then
	print ("input is 1!")
elseif x == "2" then
	print ("input is 2!")
elseif x == "3" then
	print ("input is 3!")
end