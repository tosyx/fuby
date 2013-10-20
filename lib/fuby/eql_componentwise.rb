require_relative 'each_with_index_or_key'

module Fuby
  module ::Enumerable # can't refine Module

    def eql_componentwise? that
      each_with_index_or_key.all? { |e, k| e == that[k] }
    end

  end
end
