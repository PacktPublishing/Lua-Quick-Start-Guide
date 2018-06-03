vector = { "x", "y", "z" }
print (tostring(vector[0])) -- nil, the array starts at 1
print (vector[1]) -- first element, x
print (vector[2]) -- second element, y
print (vector[3]) -- third element, z

vector = { [0] = "x", "y", "z", "w" }
print (vector[0]) -- element before first, x
print (vector[1]) -- first element, y
print (vector[2]) -- second element, z
print (vector[3]) -- third element, w