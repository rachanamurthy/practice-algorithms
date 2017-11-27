#!/bin/ruby

h = gets.strip
h = h.split(' ').map(&:to_i)
word = gets.strip

array = Array.new

word.each_char do |letter|
   array.push(h[letter.ord - 97])
end

print array.max * word.length
