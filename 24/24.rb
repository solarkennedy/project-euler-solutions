#!/usr/bin/env ruby
puts "0123456789".each_char.map{|s| s.to_i}.permutation(10).to_a[1_000_000-1].join.to_s
