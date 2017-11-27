def birthdayCakeCandles(n, ar)
  # Complete this function
  k = 0
  count = 0
  ar.each do |element|
    if element > k
      k = element
      count = 1
    elsif element == k
      count = count + 1
    else
    end
  end
  return count 
end

  n = gets.strip.to_i
  ar = gets.strip
  ar = ar.split(' ').map(&:to_i)
  result = birthdayCakeCandles(n, ar)
  puts result;