require 'fuby/_'
using Fuby

module Fuby
  refine ::Module do

    def deep_prepend *includes, &body
      ::ObjectSpace.each_object(self) { |mod| mod.send :prepend, *includes, &body }
      self
    end

  end
end
