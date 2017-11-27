#!/bin/ruby

def getRecord(s,n)
    # Complete this function
  score = Array.new
  best = s[0]
  worst = s[0]
  score[0] = 0
  score[1] = 0
  for index in (0..n-1)
    if best < s[index]
      best = s[index]
      score[0] = score[0] + 1
    end

    if worst > s[index]
      worst = s[index]
      score[1] = score[1] + 1
    end
  end
  return score
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
result = getRecord(s,n)
print result.join(" ")