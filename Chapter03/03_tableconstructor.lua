colors = {
	red = "#ff0000",
	green = "#00ff00",
	blue = "#0000ff"
}
print ("red: " .. colors.red)
print ("green: " .. colors["green"])
print ("blue: " .. colors.blue)

colors = { r = "#ff0000", ["g"] = "#00ff00", [3] = "#0000ff"}
print ("red: " .. colors.r)
print ("green: " .. colors.g)
print ("blue: " .. colors[3])