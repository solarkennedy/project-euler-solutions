#!/usr/bin/env ruby
require 'clipboard'

n1=1
n2=1
fib=0
counter=2 #Already taking care of the first two above

while fib.to_s.length < 1000
   fib = n1 + n2
   n2 = n1
   n1 = fib
   counter += 1
#  puts "fib:#{fib}    n1:#{n1}    n2:#{n2}"
end

Clipboard.copy(counter)
puts "N:#{counter} is copied to the clipboard"
