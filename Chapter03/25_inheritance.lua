Animal = {
	sound = "",

	new = function(self, object)
		object = object or {}
		setmetatable(object, self)
		self.__index = self
		return object
	end,

	MakeSound = function(self)
		print(self.sound)
	end
}

-- Dog is a class, not an object (instance)
Dog = Animal:new()
Dog.sound = "woof"

-- Cat is a class, not an Object (instance)
Cat = Animal:new()
Cat.sound = "meow"
Cat.angry = false
Cat.MakeSound = function(self)
	if self.angry then
		print("hissss")
	else
		print(self.sound)
	end
end

animals = { Cat:new(), Dog:new(), Cat:new() }
animals[1].angry = true

for i,v in ipairs(animals) do
		-- The current animal is stored in the v variable.
		-- It doesn't matter if the animal is a Dog or a Cat
		-- Both Dog and Cat extend Animal, which is guaranteed to contain a MakeSound function.
	v:MakeSound()
end