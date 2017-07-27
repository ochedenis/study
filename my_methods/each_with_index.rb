require 'pry'
require 'test/unit'
extend Test::Unit::Assertions


def ewi(z)
  for i in 0...(z.size)
    x = z[i]
    yield x, i
  end
end


# ewi([43,'tr',50,'fdur']) { |x, i| p x, i }
# ewi(['a', 'v', 'l']) {|x, i| p "arr[#{i}]=#{x}"}
# ewi([43,'tr',50,'fdur']) {|x, i| p "index: #{i} for #{x}"}

test1 = []
result2 = ewi([43,'tr',50,'fdur']) { |x, i| test1 << x; test1 << i}

assert_equal(test1, [43, 0, "tr", 1, 50, 2, "fdur", 3])
