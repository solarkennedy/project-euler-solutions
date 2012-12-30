#!/usr/bin/env ruby
require 'clipboard'

def factorial(x)
   return ( (1..x).inject(:*)  || 1 )
end

# Just combination forumla, also pascal triangle cell
def cell(n,d)
   return factorial(n)/( factorial(n-d) * factorial(d) )
end
    
def calc_paths(n)
   sum = 0
   n -= 1
   for x in (0..(n))
      # sum cells n cells on the pascal's triangle diagonal
      sum += cell(n+x,x)
   end
   return sum * 2
end

for n in (1..20)
  puts "#{n}: #{calc_paths(n)}"
end

Clipboard.copy(calc_paths(n))
puts ""
puts "The number of paths for a 20x20, #{calc_paths(n)} is in the clipboard."
