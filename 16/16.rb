#!/usr/bin/env ruby
sum = 0
for x in (2**1000).to_s.each_char
   sum += x.to_i
end
puts sum
