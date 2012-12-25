#!/usr/bin/env ruby
require 'clipboard'

palindrome = 0
for num1 in (100..999).each
	for num2 in (100..999).each
		product = num1 * num2 
		palindrome = product if ( product.to_s == product.to_s.reverse && product > palindrome )
	end
end

Clipboard.copy(palindrome)
puts "#{palindrome} is in the clipboard"
