require_relative 'splat'
require_relative 'enumerables'

module Fuby
  Enumerables.each do |enumerable|
    refine enumerable do

      def equivalence? eq = :eql?
        each_cons(2).splat.all? { |fst, snd| fst.send eq, snd }
      end

    end
  end
end
