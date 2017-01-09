module BookKeeping
  #VERSION = 1
end

class Robot

  attr_accessor :name, :used_names

  def initialize
    self.name = ""
    self.used_names = []
  end

  def name
    name = generate_name
    if self.used_names.index(name) != nil && self.used_names.index(name) > 0
      self.name
    else
      self.used_names.push(name)
      self.name = name
      name
    end
  end

  def generate_name
    letters = ('A'..'Z').to_a
    name = "" + letters[rand(26)] + letters[rand(26)] + rand(1000).to_s
    name
  end

end
