_G.declared = {}
setmetatable(_G, _G)

_G.Declare = function(k, v)
 _G.declared[k] = true
end

_G.__index = function(t, k)
 if not _G.declared[k] then
 print ("Can't read undeclared variable: " .. k)
 return nil
 end
 return rawget(t, k)
end

_G.__newindex = function(t, k, v)
 if not _G.declared[k] then
 print ("Can't write undeclared variable: " .. k)
 else
 rawset(t, k, v)
 end
end

Declare("x") -- Declare in _G
Declare("y") -- Declare in _G

x = 21
y = 22
print (x .. ", " .. y)
z = 5 -- Can't add to _G if not declared
print (z)
local w = 19 -- Local to the file, not in _G
print ("w: " .. w)