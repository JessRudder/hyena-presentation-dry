require_relative '../models/concerns/memorable'

class Vehicle
  extend Memorable::ClassMethods
  prepend Memorable::InstanceMethods

  def fuel
    "Vrooooooooom!"
  end
end