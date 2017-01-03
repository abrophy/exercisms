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
    @array_of_numbers = []
    @array_of_primality = []
    (2..@given_number).each do |item|
      @array_of_numbers.push(item)
      @array_of_primality.push(true)
    end

    # loop through the values
    @array_of_numbers.each do |item|
      for i in item..@given_number
        if i == item
        elsif i % item == 0
          @array_of_primality[i-2] = false
        end
      end
    end

    # dump the values
    @result = []
    @array_of_primality.each_with_index do |item,index|
      if item
        @result.push @array_of_numbers[index]
      else
      end
    end

    @result
  end

end
