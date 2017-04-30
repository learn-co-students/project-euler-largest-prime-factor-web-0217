# Enter your object-oriented solution here!
class LargestPrimeFactor
  attr_accessor :number

  def initialize(input)
    @number = largest_prime_factor(input)
  end

  def largest_prime_factor(input)
      test = 3
      out = 0
      while test <= input
        if ((input % test == 0)) && is_prime(test)
          out = test
          input = input/test
        end
        test +=1
      end
      out

  end
end
