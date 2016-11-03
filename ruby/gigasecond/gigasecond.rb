module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(date)
    date + 1000000000
  end
end
