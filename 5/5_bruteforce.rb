#!/usr/bin/env ruby
require 'clipboard'

def factors(composite)
num = 2
factors = []
while num <= Math.sqrt(composite)
        # overwrite factor with larger and larger values
        if ( composite % num == 0 )
                # If we are a factor, spit out the factor to stdout
                factors += [ num ]

                # And start over
                composite = composite / num
                num = 2
        else
                num +=1
        end
end
return factors + [ composite ]
end


max=20
upper_bound = (1..max).inject(:*) || 1
factors = []
(1..max).each{ |x| factors += factors(x) }
product = 1
factors.uniq.each { |x| product *= x }
lower_bound = product
puts "lower bound: #{lower_bound}, upper bound: #{upper_bound}"

num = lower_bound
while num < upper_bound
	break if num%2==0 && num%3==0 && num%4==0 && num%5==0 && num%6==0 && num%7==0 && num%8==0 && num%9==0 && num%10==0 && \
                 num%11==0 && num%12==0 && num%13==0 && num%14==0 && num%15==0 && num%16==0 && num%17==0 && num%18==0 && num%19==0 && num%20==0
	num += 1
end
puts num
