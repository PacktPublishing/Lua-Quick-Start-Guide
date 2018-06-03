num_rows = 4
num_cols = 4
matrix = {} -- create new matrix
for i=1,num_rows do
	matrix[i] = {} -- create new row
	for j=1,num_cols do
		matrix[i][j] = i * j -- Assign value to row i, column j
	end
end

num_rows = 4
num_cols = 4
values = { 
	'A', 'B', 'C', 'D',
	'E', 'F', 'G', 'H',
	'I', 'J', 'K', 'L',
	'M', 'N', 'O', 'P'
}
value = 1
matrix = {} -- create new matrix
for i=1,num_rows do
	matrix[i] = {} -- create new row
		for j=1,num_cols do
		-- current element: row i, column j
		-- assign current value to element
		matrix[i][j] = values[value] -- assign element to column
		value = value + 1 -- move to next letter
	end
end
-- print some elements
print (matrix[1][1])
print (matrix[2][4])
print (matrix[3][4])