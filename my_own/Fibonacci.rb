p "Paste what order number you need?"

x = (gets.chomp.to_i) - 2
numb = [1,1]

if x < 1
  puts "\n\nHeare you Fibonacci number: 1"
else
  x.times do
    numb << (numb.shift + numb[0])
  end
  puts "\n\nHeare you Fibonacci number: #{numb[1]}"
end
