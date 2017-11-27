#!/bin/ruby

def solve(n, s, d, m)
    # Complete this function
  count = 0
  # print s
  flag = n - m
  for element in (0..flag)
    sum = 0
    # print "Element"
    # print element
    # print "\n"
    for index in element..element+m-1
      # print "Index"
      # print index
      # print "\n"
      sum = sum + s[index]
      # print "sum"
      # print sum
      # print "\n"
    end
    if sum == d
      count = count + 1
      # print "Count"
      # print count
      # print "\n"
    end
  end
  return count
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result;
