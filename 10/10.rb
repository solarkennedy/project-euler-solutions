#!/usr/bin/env ruby
require 'mathn'
require 'clipboard'
limit=2000000

sum = Prime.each(limit).to_a.inject(:+)
Clipboard.copy(sum)
puts "#{sum} is copied to the clipboard."
