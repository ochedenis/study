a = ["Kyiv", "San Francisco", "Lviv"]
b = []
a.each do |city|
  s = city.downcase
  if (s.include? "k") || (s.include? "o")
   b << city
  end
end
  print b
