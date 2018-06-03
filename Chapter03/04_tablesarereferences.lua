x = 10 -- y assigned 10 by value
y = x -- y assined the value of x (10) by value
x = 15 -- x assigned 15 by value
print (x) -- 15
print (y) -- 10

a = {} -- a is assigned a table reference
b = a -- b references the same table as x
b.x = 10 -- also creates a.x, a and b reference the same table
a.y = 20 -- also creates b.y, a and b reference the same table
a.x = 30 -- also changes b.x, a and b reference the same table
-- Even tough we assigned different variables to a.x and b.x
-- because the variables reference the same table, they should
-- both have the same value
print ("a.x: " .. a.x) -- prints a.x: 30
print ("b.x: " .. b.x) -- print b.x: 30
print ("a.y: " .. a.y) -- printx a.y: 20
print ("b.y: " .. b.y) -- prints b.y: 20
a = nil -- a no longer references the table
b = nil -- nothing references the table after this