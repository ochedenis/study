=begin

1 5 6      4 6  5          5 11  11
4 3 7  +   8 10 6    =     12 13 13
8 7 6      8 7  9          16 14 15

for i in 0..matrix size
for j in 0..row size

hw:
create def sum_matrix m1, m2 - for matrix of any size

=end

a = [[1,5,6,5],[4,3,7,6],[8,7,6,0],[0,7,5,3]]
b = [[4,6,5,3],[8,10,6,1],[8,7,9,5],[1,4,5,7]]

def sum_matrix(a,b)
  neo = []
  # a.size.times { neo << []  }
  for i in 0...a.size
    neo << []
    for j in 0...a[i].size
      x = a[i][j]
      y = b[i][j]
      neo[i] << x + y
    end
  end
  p neo
end

sum_matrix(a,b)
