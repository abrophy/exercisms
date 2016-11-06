module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @given_number = number
  end

  def square_of_sum
    i = 0
    total = 0
    @given_number.times do
      i += 1
      total += i
    end
    total ** 2
  end

  def sum_of_squares
    i = 0
    total = 0
    @given_number.times do
      i += 1
      total += i**2
    end
    total
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
