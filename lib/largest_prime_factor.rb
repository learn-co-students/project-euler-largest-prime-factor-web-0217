# Enter your procedural solution here!

def is_prime(n)
  tests = Array(2..Math.sqrt(n).floor)
  tests = tests.select { |x| n % x === 0}
  return true if tests.empty?
  false
end

def largest_prime_factor(limit)
  test = 3
  out = 0
  while test <= limit
    if ((limit % test == 0)) && is_prime(test)
      out = test
      limit = limit/test
    end
    test +=1
  end
  out
end
