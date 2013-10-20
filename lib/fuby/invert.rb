require_relative 'enumerables'
require_relative 'to_hash'

using Fuby

module Fuby
  Enumerables.each do |enumerable|
    next if Hash >= enumerable
    refine enumerable do

      def invert
        to_hash.invert
      end

    end
  end
end
