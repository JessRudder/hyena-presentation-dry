module Memorable
  module ClassMethods
    def self.extended(base)
      base.class_eval do
        @all = []
      end
    end

    def all
      @all
    end
    
    def reset_all
      self.all.clear
    end

    def count
      @all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
      super
    end
  end
end