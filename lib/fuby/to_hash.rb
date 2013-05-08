require_relative 'descendants'
require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  module ::Enumerable # can't refine a Module

    def to_hash
      {}.tap { |hash| each_with_index_or_key { |val, key| hash[key] = val } }
    end

    alias_method :to_h, :to_hash

  end
  refine ::Hash do

    def to_hash
      dup
    end

    alias_method :to_h, :to_hash

  end
end
