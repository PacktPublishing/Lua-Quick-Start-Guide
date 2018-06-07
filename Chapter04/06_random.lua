math.randomseed(os.time())
print ("Guess a number between 10 and 100!")
number = math.random(10, 100)
-- print ("Random: " .. number)
repeat
 local guess = tonumber( io.read() )
 if guess ~= nil then
 if guess == number then
 print ("You guessed the number.")
 break
 elseif guess < number then
 print ("Too low, guess again.")
 else
 print ("Too high, guess again.")
 end
 end
until false