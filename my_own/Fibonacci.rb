p "Paste what order number you need?"

x = gets.chomp.to_i

numb = [0,1]

x.times { numb << (numb.shift + numb[0]) }

puts "\n\nHeare you Fibonacci number: #{numb[0]}"
