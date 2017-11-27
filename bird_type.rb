#!/bin/ruby

def migratoryBirds(n, ar)
    # Complete this function
  freq = ar.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  print freq
  values = freq.values
  print values
  variable = values[0]
  values.each do |e|
    if e > variable
      variable = e
    elsif e == variable
      variable = e 
    end
  end

  return ar.max_by { |v| freq[v] }
end


n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result;
