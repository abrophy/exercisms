module BookKeeping
  #VERSION = 2
end

class Sieve

  def initialize(number)
    @given_number = number
  end

  def primes
    if @given_number < 2
      # returns an empty list as there are no primes under 2
      []
    elsif @given_number == 2
      [2]
    else
      eratosthenes
    end
  end

  def eratosthenes

  end

end
