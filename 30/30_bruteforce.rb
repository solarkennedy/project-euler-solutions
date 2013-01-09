#!/usr/bin/env ruby
sum=0
for number in (2..999_999)
   sum += number if number.to_s.each_char.inject(0){ |result, char| result += char.to_i**5} == number
end
puts sum
