require 'fuby/_'
using Fuby

module Fuby
  refine ::Enumerable do

    def part_of? that
      count <= that.count and eql_componentwise? that
    end

    def matches_part_of? that
      count <= that.count and matches_componentwise? that
    end

    methods_added_as_binary_operator :part_of?, :matches_part_of?

  end
end
