=begin

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

    1634 = 1^4 + 6^4 + 3^4 + 4^4
    8208 = 8^4 + 2^4 + 0^4 + 8^4
    9474 = 9^4 + 4^4 + 7^4 + 4^4

As 1 = 1^4 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
=end

def fifth_power(n)
  powers = []
  sum = 0
  (10..n).each do |num|
    sum = num.to_s.chars.map { |i| i.to_i**5 }.reduce(:+)

    if sum == num
      powers << num
    end
  end

  powers.reduce(:+)
end

puts fifth_power(1000000)
