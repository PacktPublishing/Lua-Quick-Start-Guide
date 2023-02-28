Character = {
	alive = true
}

Character.position = {
	x = 10, y = 20, z = 30
}

--[[Character.new = function(self, object)
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object
end--]]

Character.new = function(self, object)
	object = object or {}
	-- Assign per instance variables after the object is valid
	-- but before setting the meta table! Copy all members of
	-- the new table by value!
	object.position = {}
	object.position.x = Character.position.x
	object.position.y = Character.position.y
	object.position.z = Character.position.z
	setmetatable(object, self)
	self.__index = self
	return object
end

player1 = Character:new()
player2 = Character:new()

player1.position.x = 0
player2.position.y = 10

print ("Player 1, position: (" .. player1.position.x .. ", " .. player1.position.y .. ", " .. player1.position.z .. ")")
print ("Player 2, position: (" .. player2.position.x .. ", " .. player2.position.y .. ", " .. player2.position.z .. ")")

if player1.position == player2.position then
	print ("Player 1 and 2 have the same position reference");
else
	print ("Player 1 and 2 have unique positon tables");
end

print ("Table id:")
print ("Player 1: " .. tostring(player1.position))
print ("Player 2 :" .. tostring(player2.position))
