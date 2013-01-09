#!/usr/bin/env ruby
require 'clipboard'

string ="75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
$array = Array.new
counter=0
for row in string.strip.split("\n")
   $array[counter] = row.split(" ")
   counter += 1
end

def traverse(skip_these)
#   puts "Starting traverse skipping #{skip_these}"
   sum = 0
   for row in (0..($array.length)-1)
      if $array[row].count == 1
         col = 0 
      elsif skip_these.include? row # If we are on the row we are supposed to skip,
                              #then do the opposite of what makes sense
         if $array[row][col+1] <= $array[row][col] then col += 1 end
      else  # Otherwise pick the bigger colum
         if $array[row][col+1] >= $array[row][col] then col += 1 end
      end
#      puts $array[row][col]
      sum += $array[row][col].to_i
   end
#   puts "Sum: #{sum}"
#   puts " "
   return sum
end

def gen_skips(max)
    possibilities = (0..max).to_a
    skips=[]
    for x in possibilities # double use of that variable
        skips += possibilities.combination(x).to_a
    end
    return skips
end

max_sum=0
for try in gen_skips($array.length)
    temp = traverse(try)
    ( max_sum = temp; puts "Bigger sum of #{max_sum} with try #{try}" ) if max_sum < temp
end  
Clipboard.copy(max_sum)
puts "#{max_sum} is copied to the clipboard"
