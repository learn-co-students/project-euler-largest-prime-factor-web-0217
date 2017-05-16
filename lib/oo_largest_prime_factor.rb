# Enter your object-oriented solution here!
require 'prime'
class LargestPrimeFactor
  def initialize(num)
    @num = num
  end

  def number
    Prime.prime_division(@num).max{|a,b| a[0] <=> b[0]}[0]
  end
end
