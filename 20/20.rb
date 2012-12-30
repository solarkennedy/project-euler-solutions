#!/usr/bin/env ruby
sum = 0
(1..100).inject(:*).to_s.each_char { |a| sum += a.to_i }
puts sum
