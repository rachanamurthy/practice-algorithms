#!/bin/ruby

def divisibleSumPairs(n, k, ar)
    # Complete this function
  count = 0
  for i in 0..n-2
    # print "i = " + i.to_s 
    for j in i+1..n-1
      # print "j = " + j.to_s 
      if ((ar[i] + ar[j]) % k) == 0
        count = count + 1
      end
    end
  end
  return count
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
