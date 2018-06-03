tbl = {}
tbl["x"] = 20
i = "x"
print (tbl["x"])
print (tbl[i])

tbl = {}
tbl["x"] = 10
tbl[10] = "x"
print ("x: " .. tbl["x"])
print ("10: " .. tbl[10])

tbl = {}
tbl["x"] = 20
i = "x"
print (tbl["x"])
print (tbl[i])
print (tbl.x)
tbl.y = 10
print ("x + y: " .. tbl.x + tbl.y)
print (tbl["y"])
print (tbl.y)

tbl = {}
-- z is never added to the table!
print (tostring(tbl["z"])) -- nil
print (tostring(tbl.z)) -- nil