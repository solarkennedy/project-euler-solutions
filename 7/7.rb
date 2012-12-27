#!/usr/bin/env ruby
require 'mathn'
require 'clipboard'
limit=100001

prime = Primes.each(1000000).to_a[limit-1]
Clipboard.copy(prime)
puts "#{prime} is copied to the clipboard."
