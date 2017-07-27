i = 8
loop do
  i += 1
 if i % 2 == 1
   next
 end
 print " #{i}"
 break if i == 20
end
