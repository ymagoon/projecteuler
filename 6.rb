#sum of squares of first ten num 1^2 + 2^2 + 3^2...n^2 = 385
#square of sum of first ten numbers (1+2+3+4...n)^2 = 3025
#diff is 3025 - 385 = 2640
#what is the sum square difference of the numbers from 1 - 100

def sum_square_diff(n)
  (1..n).reduce(:+)**2 - (1..n).map { |num| num**2}.reduce(:+)
end

puts sum_square_diff(1000)
