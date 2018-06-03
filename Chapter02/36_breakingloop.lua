x = 0
while x < 10 do -- Execute 10 times!
	print ("x is " .. x)
	if x == 5 then
		-- This stops the loop execution at 5
		break
	end
	x = x + 1
end