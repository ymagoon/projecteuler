#find the 10001st prime number - no library

def find_prime(n)
  prime = 0
  cnt = 0
  i = 2
  while cnt != n
    if prime?(i)
      prime = i
      cnt += 1
    end

    i += 1
  end
  prime
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
  while i * i <= n
    if n % i == 0 || n % (i + 2) == 0
      return false
    end
    i += 6
  end
  return true
end

#puts prime?(101)
puts find_prime(10001)
