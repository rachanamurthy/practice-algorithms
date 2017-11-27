#!/bin/ruby

def kangaroo(x1, v1, x2, v2)
    # Complete this function
  if (x1 > x2 && v1 > v2) || (x2 > x1 && v2 > v1)
    return 'NO'
  else
    no_of_hops = (x2 - x1) / (v1 - v2)
    if (no_of_hops == no_of_hops.to_i) && (no_of_hops >= 0)
      return 'YES'
    else
      return 'NO'
    end
  end
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_f
v1 = v1.to_f
x2 = x2.to_f
v2 = v2.to_f
result = kangaroo(x1, v1, x2, v2)
puts result;
