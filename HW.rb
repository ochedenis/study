
ass = ["a","s","s"]
p "Here we have word - #{ass.join.to_s}"
y = []
c = []
ass.each {|x| y << x.ord }
c << y[0] + 7
c << y[0]
c << y[1] - 3
c << y[1] - 3
c << y[2] + 6
ass = []
c.each {|x| ass << x.chr }

p "And here we got - #{ass.join.to_s};)"
