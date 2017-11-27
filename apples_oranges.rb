#!/bin/ruby

s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apples = gets.strip
apples = apples.split(' ').map(&:to_i)
oranges = gets.strip
oranges = oranges.split(' ').map(&:to_i)

counta = 0
counto = 0

for index in (0..m-1)
  if apples[index] > 0
    value = apples[index] + a
    if value >= s && value <= t
      counta = counta + 1
    end
  end
end

for index2 in (0..n-1)
  if oranges[index2] < 0
    value = b + oranges[index2] 
    if value >= s && value <= t
      counto = counto + 1
    end
  end
end

print counta
print "\n"
print counto