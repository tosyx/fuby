require_relative 'equivalence'

module Fuby
  refine ::Array do

    def longest_common_suffix *those
      zip(*those).map(&:reverse).take_while(:equivalence?).map(:first).map(&:reverse)
    end

  end
end
