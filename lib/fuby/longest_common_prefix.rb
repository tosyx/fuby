require_relative 'equivalence'

module Fuby
  refine ::Array do

    def longest_common_prefix *those
      zip(*those).take_while(:equivalence?).map(:first)
    end

  end
end
