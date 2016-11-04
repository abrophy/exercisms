module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    converted = false
    output = number

    if number % 3 == 0
      output = 'Pling'
      converted = true
    end

    if number % 5 == 0
      if converted
        output += 'Plang'
      else
        converted = true
        output = 'Plang'
      end
    end

    if number % 7 == 0
      if converted
        output += 'Plong'
      else
        converted = true
        output = 'Plong'
      end
    end

    output.to_s
  end
end
