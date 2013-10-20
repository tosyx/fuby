require_relative 'method_added_as_binary_operator'
require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  Enumerables.each do |enumerable|
    refine enumerable do

      def matches_componentwise? that
        each_with_index_or_key.all? { |e, k| e === that[k] }
      end

      method_added_as_binary_operator :matches_componentwise?

    end
  end
end
