require 'fuby/_'
using Fuby

module Fuby
  refine ::Module do

    def deep_include *includes, &body
      ::ObjectSpace.each_object(self) { |mod| mod.send :include, *includes, &body }
      self
    end

  end
end
