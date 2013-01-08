#!/usr/bin/env ruby

width = 1001
a = 2
b = 3
sum = 0

# 1           = 1
# 3  5  7  9  = 24 =   counter = 2,3  3^2 + 3^2-2*1 + 3^2-2*2 + 3^2-2*3
# 13 17 21 25 = 76 =   counter = 4,5  5^2 + 5^2-4*1 + 5^2-4*2 + 5^2-4*3
#                              = a,b  a**2 + a**2-b + a**2-2*b + a**2-3*b

while a <= width
  sum += b**2 + b**2-a + b**2-2*a + b**2-3*a
  #puts "#{b**2} + #{b**2-a} + #{b**2-2*a} + #{b**2-3*a}"
  a += 2
  b += 2
end
puts "Diagonal sum: #{sum+1}"
