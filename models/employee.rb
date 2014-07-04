require_relative '../models/concerns/memorable'

class Employee
  extend Memorable::ClassMethods
  prepend Memorable::InstanceMethods

  def pay
    "Wooohooooo!"
  end
end
