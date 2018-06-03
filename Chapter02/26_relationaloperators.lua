x = 2 == 2 -- true
y = 2 == 3 -- false
z = "nine" == 9 -- false

x = 2 ~= 2 -- false
y = 2 ~= 3 -- true
z = "nine" ~= 9 -- true

x = 4 > 5 -- false
y = 4 > 4 -- false
z = 4 > 3 -- true

x = 4 >= 5 -- false
y = 4 >= 4 -- true
z = 4 >= 3 -- true

x = 3 < 2 -- false
y = 3 < 3 -- false
z = 3 < 4 -- true

x = 3 <= 2 -- false
y = 3 <= 3 -- true
z = 3 <= 4 -- true