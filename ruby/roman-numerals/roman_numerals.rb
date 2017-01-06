module BookKeeping
  #VERSION = 2
end

class Fixnum

  def to_roman

  numerals = [
    [1000, "M"],
    [100, "C"],
    [10, "X"],
    [5, "V"],
    [1, "I"],
  ]

    running_value = self
    result_string = ""

    numerals.each_with_index do |item, index|
      if running_value >= item[0]
        how_many = running_value/item[0].to_i
        puts how_many.inspect
        puts item[1].inspect
        puts result_string.inspect
        how_many.times do
          result_string += item[1]
        end
        running_value -= how_many * item[0]

        puts running_value
        puts result_string

      elsif running_value <= item[0]

        puts running_value
        puts result_string

        unless item[0] == 1
          if running_value >= (item[0] - numerals[index + 1][0])
            result_string += numerals[index+1][0] + item[0]
            running_value -= item[1] - numerals[index+1][1]
          end
        end
      end

      puts "CHECK"
      puts running_value
      puts result_string

    end

    result_string
  end
end
