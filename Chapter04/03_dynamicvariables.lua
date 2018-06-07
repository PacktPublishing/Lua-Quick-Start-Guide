foo = "bar"
_G.foo = "bar"
_G["foo"] = "bar"

value1 = 'x'
value2 = 'y'
value3 = 'z'
for i = 1,3 do
 print ("value" .. i .. ": " .. _G["value" .. i])
end