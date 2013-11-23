require_relative 'descendants'

module Fuby
  refine ::Module do

    def self_and_descendants type = ::Module
      ObjectSpace.each_object(type).select { |mod| mod <= self }
    end

  end
end
