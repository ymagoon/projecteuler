#The following iterative sequence is defined for the set of positive integers:

#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def collatz(n) #1000000
  sequence_cnt = 0
  largest_num = 0

  (1...n).each do |num|
    cnt = 0
    start = num
    while num != 1 # For each number, find the number of sequences.
      if num.odd?
        num = 3 * num + 1
      else
        num = num/2
      end
      cnt += 1
    end

    if cnt > sequence_cnt
      sequence_cnt = cnt
      largest_num = start
    end
  end
  largest_num
end

puts collatz(1000000)
