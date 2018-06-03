Enemy = { }
Enemy.health = 200
Enemy.attack = 4
Enemy.defense = 20

-- By convention, the first argument should be names self.
-- The reason for this will be explained later in this section
Enemy.new = function (self, object)
	object = object or {} -- Use provided table, or create new one
	setmetatable(object, self) -- Assign meta table
	self.__index = self
	return object
end

-- By convention, the first argument should be names self
-- The reason for this will be explained later in this section
Enemy.hit = function(self, damage)
	damage = damage - self.defense
	if damage < 0 then
		damage = 0
	end
	self.health = self.health - damage
end

grunt = Enemy.new(Enemy) -- Health is stored in "Enemy"
miniBoss = Enemy.new(Enemy) -- Health is stored in "Enemy"
boss = Enemy.new(Enemy, { health = 500, defense = 100 } ) -- Health is stored in "boss"
miniBoss.health = 250 -- Health is now stored in "miniBoss"
-- grunt does not have a health variable, so the enemy table health is returned
print ("grunt health: " .. grunt.health)
-- miniBoss has a health variable, it was created in the above assignment
print ("mini boss health: " .. miniBoss.health)
-- boss also has a health variable, so the boss table health is returned
print ("boss health: " .. boss.health)

print ("Hero attacks both boss and grunt")
Enemy.hit(boss, 50)
Enemy.hit(grunt, 55)
print ("grunt health: " .. grunt.health)
print ("boss health: " .. boss.health)

