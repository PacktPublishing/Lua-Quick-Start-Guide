-- It's important that the table retuned be local!
local character = {}
character.health = 20
character.strength = 5
character.name = ""

character.new = function (self, object)
	object = object or {} -- Use provided table, or create new one
	local provided = ""
	if type(object) == "string" then
		provided = object
		object = {}
	end
	setmetatable(object, self) -- Assign meta table
	self.__index = self
	if provided ~= "" then
		object.name = provided
	end
	return object
end

character.attack = function(self, other)
	print (self.name .. " attacks " .. other.name)
	other.health = other.health - self.strength
	if other.health < 1 then
		print ("\t" .. other.name .. " is dead")
	else
		print ("\t" .. other.name .. " has " .. other.health .. " health left")
	end
end

return character