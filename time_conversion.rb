#!/bin/ruby

def timeConversion(s)
  # Complete this function
  s_arr = s.split(':')
  len = s_arr[2].split('')
  if len[2]=='P' && s_arr[0] != '12'
    s_arr[0] = s_arr[0].to_i + 12
  end

  if len[2] == 'A' && s_arr[0] == '12'
    s_arr[0] = '00'
  end
  
  s_arr[2] = len[0] + len[1]
  s = s_arr.join(':')
  return s 
end

s = gets.strip
result = timeConversion(s)
puts result
