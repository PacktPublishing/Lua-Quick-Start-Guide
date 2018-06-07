local file = io.open("new_file.txt", "a")
file:close()

os.rename("new_file.txt", "renamed_file.txt")

os.remove("renamed_file.txt")