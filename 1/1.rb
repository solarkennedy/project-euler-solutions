#!/usr/bin/env ruby
require "clipboard"

limit = 1000

puts "Summing multiple of 3 and 5 up to #{limit}..."

counter = 1
multiples_5 = []
while counter < ( limit / 5.0 )
	multiples_5 += [ counter * 5 ]
	counter += 1
end
	

counter = 1
multiples_3 = [] 
while counter < ( limit / 3.0 )
	multiples_3 += [ counter * 3 ]
	counter += 1
end

all = multiples_5 + multiples_3

sum = 0
all.uniq.each { |a| sum += a }
Clipboard.copy sum.to_s
puts "#{sum.to_s} is now in the clipboard. Paste away."
