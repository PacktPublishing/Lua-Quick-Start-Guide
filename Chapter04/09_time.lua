print ("Time: " .. os.clock())
for i=1,1000,1 do
 -- Just spin
end
print ("Time: " .. os.clock())

local startTime = os.clock()
for i=1,100000,1 do
 -- Do stuff
end
local endTime = os.clock()
local totalTime = os.difftime(startTime, endTime)
print ("The above loop took: " .. totalTime .. " seconds")