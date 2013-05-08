require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  refine ::Enumerable do

    def eql_componentwise? that
      each_with_index_or_key.all? { |e, k| e == that[k] }
    end

  end
end
