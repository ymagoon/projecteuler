#A palindromic number reads the same both ways.
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  i = 999
  max = 0
  while i > 99
    j = i
    while j > 99
      if palindrome?((i*j).to_s) && (i * j) > max
        max = i * j
      end

      if i * j < max
        break
      end

      j -= 1
    end
    i -= 1
  end
  max
end

def palindrome?(string)
  (string.length/2).times.with_index do |index|
    if string[index] != string[-1 - index]
      return false
    end
  end

  return true
end
puts largest_palindrome
