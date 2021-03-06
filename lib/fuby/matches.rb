require_relative 'method_added_as_binary_operator'

using Fuby

module Fuby
  Enumerables.each do |enumerable|
    refine enumerable do

      def matches? that
        count == that.count and matches_componentwise? that
      end

      method_added_as_binary_operator :matches?

    end
  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
