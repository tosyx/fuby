require_relative 'method_added_as_binary_operator'
require_relative 'eql_componentwise'

using Fuby

module Fuby
  module ::Enumerable # can't refine Module

    def part_of? that
      count <= that.count and eql_componentwise? that
    end

    method_added_as_binary_operator :part_of?

  end
end

Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
