local sentance = "The quick brown fox"
local word = "quick"
local start = string.find(sentance, word)
start = start + #word + 1
local result = string.sub(sentance, start)
print("Who was quick?")
print ("the " .. result)