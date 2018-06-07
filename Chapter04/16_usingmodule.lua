-- load the character module into a table named character
Character = require ("15_character")
-- Create a new hero, which is a charcter
gwen = Character:new("gwen")
gwen.strength = 10
-- Create a new enemy, also a character
orc = Character:new("orc")
-- Run game logic
gwen:attack(orc)
orc:attack(gwen)
gwen:attack(orc)