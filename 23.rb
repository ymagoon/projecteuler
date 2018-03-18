=begin

A perfect number is a number for which the sum of its proper divisors is
exactly equal to the number. For example, the sum of the proper divisors of
28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than
n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
number that can be written as the sum of two abundant numbers is 24.
By mathematical analysis, it can be shown that all integers greater than 28123
can be written as the sum of two abundant numbers. However, this upper
limit cannot be reduced any further by analysis even though it is known
that the greatest number that cannot be expressed as the sum of two abundant
numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as
the sum of two abundant numbers.
=end

def abundant_nums(n)
  an = (1..n).select { |n| abundant?(n) } # An array of all abundant numbers < 28123.
  abundant = []

  an.each do |x|
    an.each do |y|
      break if x + y > n
      abundant << (x + y) # An array of all possible abundant sums < 28123.
    end
  end

  not_ans = (1..n).to_a - abundant # Create array of all non-abundant numbers.

  sum = not_ans.reduce(:+)
  sum
end

def abundant?(n)
  sum = 1
  (2..Math.sqrt(n).floor).each do |num|
    if n % num == 0
      sum += n/num if num != Math.sqrt(n)
      sum += num
    end
  end

  return sum > n
end

puts abundant_nums(28123).inspect
