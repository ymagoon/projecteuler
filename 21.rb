=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b
are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end

def amicable_nums(n) # n = 10000
  nums = []
  (1...n).each do |num|
    #num = 220
    sum = sum_divisors(num) #sum = 284
    sum2 = sum_divisors(sum) #sum2 = 220

    if num == sum2 && sum != sum2
      nums << num
    end
  end
    nums.reduce(:+)
end

def sum_divisors(n)
  divisors = [1]
  i = 2
  while i <= n/2
    if n % i == 0
      divisors << i
    end
    i += 1
  end
  divisors.reduce(:+)
end

#puts sum_divisors(284)
puts amicable_nums(10000).inspect
