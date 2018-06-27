print ("bar_variable: " .. foo.bar_variable)
foo.bar_variable = 7
print ("bar_variable: " .. foo.bar_variable)

print ("bar_function: " .. foo.bar_function())
print ("bar_cfunction: " .. foo.bar_cfunction())

print ("bar_property: " .. foo.bar_getset)
