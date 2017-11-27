#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)
# your code goes here

if height.max > k
  print height.max - k
else
  print 0
end