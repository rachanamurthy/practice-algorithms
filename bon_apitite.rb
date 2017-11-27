#!/bin/ruby

def bonAppetit(n, k, b, ar)
  # Complete this function
  actualSum = 0
  for item in (0..n-1)
    actualSum = actualSum + ar[item] if item != k
  end
  b_original = actualSum / 2
  if b_original == b
    return 'Bon Appetit'
  else
    return (b - b_original)
  end
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
b = gets.strip.to_i
result = bonAppetit(n, k, b, ar)
puts result;
