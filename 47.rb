
=begin
The first two consecutive numbers to have two distinct prime factors are:

14 = 2 × 7
15 = 3 × 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2² × 7 × 23
645 = 3 × 5 × 43
646 = 2 × 17 × 19.

Find the first four consecutive integers to have four distinct prime factors each. What is the first of these numbers?
=end

def four_factors
  four_factors = []

  i = 50
  while true
    factors = factors(i)
    switch = true
    if factors.uniq.count == 4
      puts "found factor of 4 #{factors}"
      factors.each do |num|
        if !prime?(num)
          switch = false
          break
        end
      end

      if switch
        puts "inside switch for #{i}"
        if four_factors.count > 0
          four_factors << i if four_factors.last + 1 == i
        else
          four_factors.delete
        end

        if four_factors.count == 4
          return four_factors
        end
      end
    end

    i += 1
  end

end

def four_factors2
  primes = []
  i = 2
  while primes.count != 100 # Create list of first 100 prime numbers.
    if prime?(i)
      primes << i
    end
    i += 1
  end

  a = primes.permutation.to_a
  puts a.inspect


end

def factors(n)
  factors = []
  (2..Math.sqrt(n)).each do |num|
    if n % num == 0
      factors << num
      factors << n/num if num != Math.sqrt(n)
    end
  end
  factors
end

def prime?(n)
  if n == 1
    return false
  elsif n < 4
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false
  end

  i = 5
  while i*i <= n
    if n % i == 0 || n % (i + 2) == 0
      return false
    end
    i += 6
  end
  return true
end

puts four_factors2
