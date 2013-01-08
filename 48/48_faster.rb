#!/usr/bin/env ruby
#not actually faster due to the type casting
sum = 0
for x in (1..1_000)
  sum += ((x**x).to_s[-10,10] || (x**x)).to_i
end
puts sum.to_s[-10,10]
