# require 'pry'
# require 'test/unit'
# extend Test::Unit::Assertions

def cmp(x)
 x2 = []
 x.each {|y|
 if y !=nil
   x2 << y
 end
 }
 return x2
end

p cmp([ "a", nil, "b", nil, "c", nil ]) #=> [ "a", "b", "c" ]

# result = cmp([ "a", nil, "b", nil, "c", nil ])
# assert_equal result, [ "a", "b", "c" ]
