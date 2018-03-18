=begin
Starting in the top left corner of a 2×2 grid, and only being able to move
to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
=end

def solve_grid
  grid = Array.new(41){Array.new(41)} #create 21x21 grid

  i = 0
  while i < 41
    grid[40][i] = 1
    grid[i][40] = 1
    i += 1
  end

  j = 39
  while j >= 0
    k = 39
    while k >= 0
      grid[j][k] = grid[j][k + 1] + grid[j + 1][k]
      k -= 1
    end
    j -= 1
  end

  grid[0][0]
end

puts solve_grid
