def largest_prime_factor(input)
  factor_array = [input]

  factor_array.each do |f|
    if factor_array.length > 1
      factor_array.shift
    end

    n = 2

    while f % n != 0
      n += 1
    end

    if f / n != 1
      factor_array.push(f/n)
      factor_array.push(n)
    end
  end
  factor_array.sort[-2]
end
