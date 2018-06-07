function MyPrint(str)
 print("printing: " .. str)
end
function SayHelloCustomEnv()
 local _ENV = {print=print}
 foo = "hello"
 local bar = "world"
 print(foo .. " " .. bar)
end
-- foo and bar are not in _G
SayHelloCustomEnv();
print (foo)
print (bar)