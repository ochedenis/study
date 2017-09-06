a = ["Kyiv", "San Francisco", "Lviv"]
b = []
3.times { |i|
  x = a[i].downcase
  if (x.include? "k") || (x.include? "o")
    b << a[i]
  end
}
print b
