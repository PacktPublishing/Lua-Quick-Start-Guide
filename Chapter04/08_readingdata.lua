file = io.open("data.txt")
lines = file:lines()
print("Contents of file:");
for line in lines do
 print("\t" .. line)
end
file:close()