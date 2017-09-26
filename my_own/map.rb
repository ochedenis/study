# require 'pry'
# require 'test/unit'
# extend Test::Unit::Assertions

def map(array)
  b = []
  array.each {|a| b << (yield a) }
  return b
end

# result1 = map([1,2,3]) { |x|  x * x }
# assert_equal result1, [1, 4, 9]
#
# result1 = map([1,2,3]) { |x| x + 1 }
# assert_equal result1, [2, 3, 4]


p map([1,2,3]) { |x|  x * x }
p map([1,2,3]) { |x| x + 1 }
