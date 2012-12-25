#!/usr/bin/env ruby
#    Square of sums           - Sum of squares
puts ((1..100).inject(:+))**2 - ((1..100).inject { |sum, x| sum + x*x })
