Vector = {
	x = 0,
	y = 1,
	z = 0
}

Vector.new = function (self, object)
	object = object or {} -- Use provided table, or create new one
	setmetatable(object, self) -- Assign meta table
	self.__index = self
	return object
end

Vector.print = function(self)
	print("x:" .. self.x .. ", y: " .. self.y .. ", z: " .. self.z)
end

-- same as Vector.new(Vector, nil)
velocity = Vector:new()
-- Same as Vector.new(Vector, {x=20,z=10})
momentum = Vector:new({x = 20, z = 10})

-- Using the dot syntax, the print method of the
-- Vector class is called, and the object instance
-- is passed as it's first variable (self)
Vector.print(velocity)
Vector.print(momentum)

-- Using the colon syntax, the print method can be
-- called on instances of the Vector class. The colon
-- operator will fill in the first variable (self), with
-- the object instance it is being called on
velocity:print()
momentum:print()