#!/bin/ruby

n,k,q = gets.strip.split(' ')
n = n.to_i
k = k.to_i
q = q.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

a = a.rotate(k * -1)

for a0 in (0..q-1)
  m = gets.strip.to_i
  print a[m]
  if a0 != q-1
    print "\n"
  end
end

