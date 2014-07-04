require_relative '../models/concerns/memorable'

class Hyena
  extend Memorable::ClassMethods
  prepend Memorable::InstanceMethods

  def feed(food)
    if food == "crunchy bones"
      "yipyipyip"
    else
      "grrrrrrrrr"
    end
  end
end
