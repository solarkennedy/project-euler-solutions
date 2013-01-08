#!/usr/bin/env ruby
sum = 0
for x in (1..1_000)
sum += x**x
end
puts sum.to_s[-10..-1]
