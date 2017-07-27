def grow(x)
  a = 1
  x.each {|y| a *= y}
  return a
end

=begin
def grow(x)
s=1
for i in 0...x.length
  s*=x[i]
end
  return s
end
=end

=begin
def grow(x)
  x.reduce {|z,y| z * y}
end
=end

grow([1, 2, 3]) # 6
grow([4, 1, 1, 1, 4]) # 16
grow([2, 2, 2, 2, 2, 2]) # 64
