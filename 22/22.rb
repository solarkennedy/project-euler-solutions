#!/usr/bin/env ruby
# Unix philosophy? Let them do the work
command = 'cat names.txt | tr "," "\n" | tr -d \'"\' | sort'

sum = 0
counter = 1
IO.popen(command) { |io| while (name = io.gets) do
  # Get rid of the trailng newline
  name = name.chomp
 
  # Complicated inject, takes each altter and takes is "value" and sums it to result, times counter
  product = name.each_char.inject(0){|result,letter| result.to_i + letter.ord-64} * counter
  puts "#{counter}: #{name} - #{product}"

  sum += product
  counter += 1  
end } 
puts sum
