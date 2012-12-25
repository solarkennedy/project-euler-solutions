#!/usr/bin/env ruby
require 'clipboard'

composite = 600851475143
num = 2

while num < Math.sqrt(composite)
	# overwrite factor with larger and larger values
	if ( composite % num == 0 )
		# If we are a factor, spit out the factor to stdout
		puts num.to_s

		# And start over
		composite = composite / num
		num = 2 
	else
		num +=1
	end
end
# At the end, whatever is left over is the greatest factor?
factor = composite

Clipboard.copy(factor)
puts "#{factor} is in the clipboard."
