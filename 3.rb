#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def largest_prime(n) #600851475143
  p = 0
  i = 5
  nums = []
  while i*i < n
    if n % i == 0
      nums << i
    end

    i += 1
  end

  nums.reverse_each do |num|
    if prime?(num)
      return num
    end
  end

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
  while i < n
    if n % i == 0 || n % (i + 2) == 0
      return false
    end
    i += 6
  end
  return true
end

puts largest_prime(600851475143)
