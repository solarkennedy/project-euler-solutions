#!/usr/bin/env ruby
require 'clipboard'
require 'humanize'

sum = 0
for x in (1..1000)
	sum += x.humanize.gsub(/[ -\\,]/, '').length
end
Clipboard.copy(sum)
puts "#{sum} is copied to the clipboard"
