def p(n)
  y = []
  n.each {|x|  y.push(x) if x >= 10}
  return y
end

result1 = p([10, 5, 6, 12, 4])
result2 = p([25])

sum = 0
result1.each {|x| sum += x}
result2.each {|x| sum += x}
puts sum
