require_relative 'enumerables'
require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  Enumerables.each do |enumerable|
    next if Hash >= enumerable
    refine enumerable do

      def to_hash
        {}.tap { |hash| each_with_index_or_key { |val, key| hash[key] = val } }
      end

      alias_method :to_h, :to_hash

    end
  end
end
