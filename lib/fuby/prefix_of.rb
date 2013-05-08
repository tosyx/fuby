require_relative 'part_of'

module Fuby
  refine ::Array do

    alias_method :prefix_of?, :part_of?
    alias_method :matches_prefix_of?, :matches_part_of?

    methods_added_as_binary_operator :prefix_of?, :matches_prefix_of?

  end
end

Dir.glob "*_prefix_of.rb", &method(:require)
