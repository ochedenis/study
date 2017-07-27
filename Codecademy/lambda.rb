def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })



strings = ["leonardo", "donatello", "raphael", "michaelangelo"]


symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)


my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| x.is_a? Symbol }

symbols = my_array.select(&symbol_filter)
