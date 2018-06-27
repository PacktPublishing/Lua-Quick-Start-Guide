a = Math.Vec3(0, 7, 6)
b = Math.Vec3(5, 2, 1)
c = Math.Vec3(7, 0, 0)


function PrintVec(name, vec) 
	print (name .. ": (" .. vec.x .. ", " .. vec.y .. ", " .. vec.z .. ")")
end

PrintVec("Zero", Math.Vec3.Zero)
PrintVec("b", b)
PrintVec("c", c)

print("|a|" .. a.Magnitude)
print("|b|" .. b.Magnitude)
print("|c|" .. c.Magnitude)

PrintVec("a", a)
a:Normalize()
PrintVec("a", a)

forward = Math.Vec3(0, 0, 1)
right = Math.Vec3(1, 0, 0)
up = Math.Vec3.Cross(forward, right)
PrintVec("Up", up)