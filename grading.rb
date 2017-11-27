#!/bin/ruby

def solve(grades, n)
    # Complete this function
  round = 0
  for i in (0..n-1)
    if grades[i] >= 38
      round = 5 * ( (grades[i] / 5) + 1 )
      if round - grades[i] < 3
        grades[i] = round
      end
    end
  end
  return grades
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
  grades[grades_i] = gets.strip.to_i
end
result = solve(grades, n)
for i in 0..n-1
  print result [i]
  if i != n-1
    print "\n"
  end
end