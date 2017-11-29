#!/bin/ruby

n = gets.strip.to_i
grid = Array.new(n)
test = Array.new(n)

for grid_i in (0..n-1)
  grid[grid_i] = gets.strip
end

grid_backup = Array.new(grid)

print grid.first
print "\n"
for grid_i in (1..n-2)
  test = grid[grid_i].each_char.map(&:to_i)
  test_backup1 = grid_backup[grid_i].each_char.map(&:to_i)
  test_backup2 = grid_backup[grid_i-1].each_char.map(&:to_i)
  test_backup3 = grid_backup[grid_i+1].each_char.map(&:to_i)

  for i in (1..n-2)
    if test[i]>test_backup1[i+1] && test[i]>test_backup1[i-1] && test[i]>test_backup2[i] && test[i]>test_backup3[i]
      test[i] = 'X'
    end
  end
  grid[grid_i] = test.join.to_s
  print grid[grid_i]
  print "\n"
end

print grid.last if n-1 != 0
