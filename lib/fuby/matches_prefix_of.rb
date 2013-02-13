require 'fuby/_'
require_relative 'matches_part_of'

module Fuby
  refine ::Array do

    alias_method :matches_prefix_of?, :matches_part_of?

    method_added_as_binary_operator :matches_prefix_of?

  end
end
