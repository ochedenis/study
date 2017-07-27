print "Integer please: \n"
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
  if (user_num <= -15) && (user_num >= -25) || (user_num == -45)
    puts "Fucking lucky number!!!!!!!!! "
  end
elsif user_num > 0
  puts "You picked a positive integer!"
  if user_num % 2 == 0
    puts "Interger is even"
  else
    puts "Interger is odd"
  end
else
  puts "You picked zero!"
end
