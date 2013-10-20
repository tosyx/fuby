require_relative 'method_added_as_binary_operator'
require_relative 'matches_componentwise'

using Fuby

module Fuby
  module ::Enumerable # can't refine Module

    def matches_part_of? that
      count <= that.count and matches_componentwise? that
    end

    method_added_as_binary_operator :matches_part_of?

  end
end
