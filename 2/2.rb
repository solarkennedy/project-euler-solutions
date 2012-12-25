#!/usr/bin/env ruby
require 'clipboard'

number = 1
previous = 0
newnumber = 0
sum = 0
while number < 4000000
	sum += number if number.even?
	temp = number
	number = number + previous
	previous = temp
end
Clipboard.copy(sum.to_s)
puts "#{sum} is copied to the clipboard."

