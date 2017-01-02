module BookKeeping
  VERSION = 2
end

class Pangram

  def initialize(string)
    @given_string = string
  end

  def self.is_pangram? string

    @alphabet = ('a'..'z').to_a
    @string_as_array = string.downcase.split('')
    @new_array = []
    @alphabet.each do |item|
      if @string_as_array.index(item) != nil
        # not reaching this point correctly
        @new_array.push "found"
      else
        @new_array.push item
      end
    end

    is_pangram = true

    @new_array.each do |item|
      if item != "found"
        is_pangram = false
        break
      end
    end

    is_pangram
  end

end
