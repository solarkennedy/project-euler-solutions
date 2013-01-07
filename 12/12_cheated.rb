#!/usr/bin/env ruby
require 'mathn'

n=3 #start with a prime
dn=2 #number of divisors for any prime
cnt=0 #to insure the while loop is entered
n1 = dn1 = i = exponent = 0
maxprimes = 500
#maxprimes = 65500
primearray=Prime.each(1000).to_a[0..maxprimes]
while cnt < 500
  n = n+1
  n1 = n
  if n1 % 2 == 0 then n1 = n1/2 end
  dn1 = 1
  i=0
  while i < maxprimes
    #If your array indexing starts at 0, change to i=0 and i<P
    if primearray[i]*primearray[i] > n1 then dn1=2*dn1; break end
    #When the prime divisor would be greater than the residual n1,
    #that residual n1 is the last prime factor with an exponent=1
    #No necessity to identify it.
    exponent=1
    while n1 % primearray[i] == 0 
      exponent += 1
      n1 = n1/primearray[i]
    end
    if exponent > 1 then dn1=dn1*exponent end
    break if n1 == 1
    i += 1
  end
  cnt = dn*dn1
  dn = dn1
end
puts n*(n-1)/2
