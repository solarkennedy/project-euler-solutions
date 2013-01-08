#!/usr/bin/env ruby
require 'date'

curdate = Date.new(1901,1,1)
enddate   = Date.new(2000,12,31)
sundays = 0

until curdate > enddate
  if curdate.sunday? && curdate.day == 1 then sundays += 1  end
  curdate += 1
end
puts sundays
