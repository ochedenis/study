floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|x| x.floor }

p ints = floats.collect(&round_down)


 my_proc = Proc.new { |arg1| p "#{arg1}! " }
 [1,2,3].each(&my_proc)


 odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
 lp = Proc.new { |x| x.is_a? Integer }
 ints = odds_n_ends.select(&lp)
