require_relative 'each_with_index_or_key'
require_relative 'enumerables'

module Fuby
  Enumerables.each do |enumerable|
    refine enumerable do

      def eql_componentwise? that
        each_with_index_or_key.all? { |e, k| e == that[k] }
      end

    end
  end
end
