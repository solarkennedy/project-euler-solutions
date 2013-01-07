#!/usr/bin/env ruby
require 'mathn'
require 'clipboard'

def divisors(composite)
   num = 1
   factors = 0
   while num <= composite
           factors += 1 if ( composite % num == 0 )
           num +=1
   end
   return factors
end

def what_divisors(composite)
   num = 1
   factors = []
   while num <= composite
           factors += [ num ] if ( composite % num == 0 )
           num +=1
   end
   return factors
end

n = 0
counter = 0
until divisors(n) > 500
	n += counter 
	counter += 1
#	puts "#{n} - #{divisors(n)}: #{what_divisors(n)}"
end
Clipboard.copy(n)
puts "#{n} is copied to the clipboard."
