# Enter your procedural solution here!
require 'prime'
def largest_prime_factor(num)
  Prime.prime_division(num).max{|a,b| a[0] <=> b[0]}[0]
end
