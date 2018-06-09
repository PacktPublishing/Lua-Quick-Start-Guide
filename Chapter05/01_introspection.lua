
function one()
  print ("one")
end

function two()
  one()
print("two")
end

function three()
  two()
  print("three")
  debug.getinfo(1)
  print (debug.name)
end