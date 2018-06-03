hello = "hello, world"
-- Assign length to variables
count_hash = #hello;
count_func = string.len(hello)
print ("The string:")
print (hello)
-- Print the variables assigned at the top
print ("Has a length of:")
print (count_hash)
print(count_func)
-- Use string literatls, in place
print (#"hello, world")
print (string.len("hello, world"))