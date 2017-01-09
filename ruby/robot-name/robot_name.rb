module BookKeeping
  #VERSION = 1
end

class Robot

  attr_accessor :current_name, :used_names

  def initialize(name = "")
    self.current_name = name
    self.used_names = []
    if name.length > 0
      self.used_names.push(name)
    end
  end

  def name
    if self.current_name.length > 0
      self.current_name
    else
      inner_name = generate_name

      if self.used_names.index(inner_name) != nil && self.used_names.index(inner_name) > 0
        self.name
      else
        self.used_names.push(inner_name)
        self.current_name = inner_name
        inner_name
      end
    end
  end

  def generate_name
    letters = ('A'..'Z').to_a
    name = "" + letters[rand(26)] + letters[rand(26)] + rand(1000).to_s
    name
  end

end
