using Fuby

module Fuby
  refine ::Module do

    def descendants type = ::Module
    # ObjectSpace.each_object(type).select { |mod| mod < self } FIXME
      ObjectSpace.each_object(type).select { |mod| mod.ancestors.include? self }
    end

  end
end

Dir.glob "descendants_*.rb", &method(:require)
Dir.glob "*_descendants.rb", &method(:require)
