#!/usr/bin/env ruby

def d(n)
  sum = 0
  for x in (1..n-1)
    sum += x if n % x == 0
  end
  return sum
end

amicable_sum = 0
for a in (1..9_999)
  b = d(a)
  tempa = d(b)
  if tempa == a and a != b
    amicable_sum += a 
    puts "#{a} is an amicable number d(#{a}) == d(#{b})"
  end
  
end
puts amicable_sum
