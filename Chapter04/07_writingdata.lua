-- Create function to save character data
function SaveCharacterData(name, power, team)
 file = io.open("data.txt", "w")
 file:write("name " .. name .. "\n") -- We can concatenate with ..
 file:write("attack ", power, "\n") -- or use a comma seperated list
 file:write("team " .. team, "\n") -- we can even mix & match!

 file:close()
end
-- Call the function
SaveCharacterData("gwen", 20, "blue")