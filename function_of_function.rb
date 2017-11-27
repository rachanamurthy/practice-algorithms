n = gets.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

for number in 1..n
  for index in 1..n
    if number == arr[index - 1]
      for number2 in 1..n
        if index == arr[number2 - 1]
          print number2
          print "\n"
        end
        # print 'For loop 3'
      end
    end
    # print 'For loop 2'
  end
  # print 'For loop 1'
end
