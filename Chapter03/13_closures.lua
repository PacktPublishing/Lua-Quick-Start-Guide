function NextNumber()
	-- local to the NextNumber function
	local currentNumber = 0
	return function () -- anonymous function
		-- Because this anonymous function is
		-- created inside the NextNumber function
		-- it can see all members of NextNumber
		-- this function will remember the state
		-- of NextNumber, creating a closure!
		currentNumber = currentNumber + 1
		return currentNumber
	end
end
-- Assign the anonymous function to the variable next
next = NextNumber()
-- At this point, NextNumber has finished executing.
print (next()) -- call anonymous function using next
print (next()) -- call anonymous function using next
print (next()) -- call anonymous function using next
-- currentNumber does not exist in a global context!
print (currentNumber) -- will print nil