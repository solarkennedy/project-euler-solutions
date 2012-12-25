#!/usr/bin/env ruby
require "clipboard"

max = 100

# Sum of squares
sumofsquares = 0
(1..max).each { |x| sumofsquares += x*x }

# square of sums
squareofsums = 0
(1..max).each { |x| squareofsums += x }
squareofsums *= squareofsums

# difference
difference = squareofsums - sumofsquares
puts "#{squareofsums} - #{sumofsquares} = #{difference} (added to clipboard)"
Clipboard.copy(difference)
