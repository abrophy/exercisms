module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    complements = {
      :G => 'C',
      :C => 'G',
      :T => 'A',
      :A => 'U',
    }

    strand_array = strand.split('')

    strand_array.map! do |item|
      if complements.include? item.to_sym
        complements[item.to_sym]
      else
        strand_array = [""]
        break
      end
    end

    strand_array.join ''
  end
end
