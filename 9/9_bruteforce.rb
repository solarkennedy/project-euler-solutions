#!/usr/bin/env ruby
require 'clipboard'

sum=1000

for a in (1..(sum-2))
	break unless for b in (a..(sum-1))
		c = sum - ( a + b )
		break if a**2 + b**2 == c**2 
	end
end

product = a * b * c
Clipboard.copy(product)
puts "#{product} is copied to the clipboard."
