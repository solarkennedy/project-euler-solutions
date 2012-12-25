#!/usr/bin/env ruby
require 'clipboard'

max=20

# crappy factoring
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



allfactors = []
for num in (1..max).each
	testfactors = allfactors.dup
	puts "testing for factors: #{factors(num)}. Only adding uniq values"
	for factor in factors(num).each
		# A new factor? Add it.
		if testfactors & [ factor ] != []	
			testfactors.delete_at(testfactors.index(factor) || testfactors.length )
		else
			allfactors += [ factor ]
		end
	end
	puts allfactors.to_s
end

#puts allfactors
puts "    "
puts "Multiplying all factors to get the product of: #{allfactors.to_s}..."
product = 1
allfactors.each { |x| product *= x }
Clipboard.copy(product)
puts "#{product} added to clipboard"
