require 'fuby/_'

module Fuby
  refine ::Enumerable do

    def matches_componentwise? that
      each_with_index_or_key.all? { |e, k| e === that[k] }
    end

  end
end
