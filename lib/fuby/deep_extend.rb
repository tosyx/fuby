require 'fuby/_'
using Fuby

module Fuby
  refine ::Module do

    def deep_extend *extends, &body
      ::ObjectSpace.each_object(self) { |mod| mod.send :extend, *extends, &body }
      self
    end

  end
end
