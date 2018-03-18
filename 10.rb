# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def find_sum
  i = 5
  sum = 5
  while i < 2000000
    if prime?(i)
      sum += i
    end
    i += 2
  end
  sum
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
  while i * i <= n # We only have to loop to the square root of n.
    if n % i == 0 || n % (i + 2) == 0 # Check n and n + 2 to reduce the number of times we need to iterate by 2.
      return false
    end

    i += 6 # We only need to check every six numbers based on previous conditions.
  end
  return true
end

puts find_sum
