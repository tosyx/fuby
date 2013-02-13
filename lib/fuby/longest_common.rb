require 'fuby/_'
require_relative 'equivalence'
using Fuby

module Fuby
  refine ::Enumerable do

    def longest_common_prefix *those
      zip(*those).take_while(:equivalence?).map(:first)
    end

    def longest_common_suffix *those
      zip(*those).map(&:reverse).take_while(:equivalence?).map(:first).map(&:reverse)
    end

  end
end
