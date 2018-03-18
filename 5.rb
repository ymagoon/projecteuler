def largest_multiple

  sum = 20
  while true
    switch = true
    (11..20).each do |num|
      if sum % num != 0
        switch = false
        break
      end
    end
    if switch
      return sum
    end

    sum += 20
  end
end

puts largest_multiple
