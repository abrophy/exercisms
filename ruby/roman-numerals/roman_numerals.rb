module BookKeeping
  VERSION = 2
end

class Fixnum

  def to_roman

  numerals = [
    [1000, "M"],
    [500, "D"],
    [100, "C"],
    [50, "L"],
    [10, "X"],
    [5, "V"],
    [1, "I"],
  ]

    running_value = self
    result_string = ""

    numerals.each_with_index do |item, index|
      if running_value >= item[0]
        how_many = running_value/item[0].to_i
        how_many.times do
          result_string += item[1]
        end
        running_value -= how_many * item[0]
      elsif running_value <= item[0]

        unless item[0] == 1 || running_value == 5 || running_value == 10
          next_along = numerals[index + 1]
          if next_along[0] == 5 || next_along[0] == 50 || next_along[0] == 500
            next_along = numerals[index + 2]
          end
          if running_value >= (item[0] - next_along[0])
            result_string += next_along[1] + item[1]
            running_value -= item[0] - next_along[0]
          end
        end

        if item[0] == 5 && running_value == 5
          # TODO
          # create a more general case algo
          result_string += "V"
        end

        if item[0] == 10 && running_value == 10
          # TODO
          # create a more general case algo
          result_string += "X"
        end
      end
    end

    result_string
  end
end
