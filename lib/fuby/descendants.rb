module Fuby
  refine ::Module do

    def descendants type = ::Module
      ObjectSpace.each_object(type).select { |mod| mod < self }
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
