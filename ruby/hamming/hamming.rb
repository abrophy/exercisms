module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError.new("Sequence lengths differ") if strand_a.length != strand_b.length

    array_a = strand_a.split('')
    array_b = strand_b.split('')

    hamming = 0

    array_a.each_with_index do |value, index|
      if array_a[index] != array_b[index]
        hamming += 1
      end
    end

    hamming
  end
end
