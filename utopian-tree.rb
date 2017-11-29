#!/bin/ruby

t = gets.strip.to_i
n = Array.new
for a0 in (0..t-1)
  n[a0] = gets.strip.to_i
end

# print n.length

for number in (0..n.length-1)
  height = 1
  for cycle in (1..n[number])
    if cycle == 0
      height = 1 
    elsif cycle.odd?
      height = height * 2
    else
      height = height + 1
    end
  end
  print height
  print "\n" if number != n.length - 1
end

