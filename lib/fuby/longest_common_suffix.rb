require_relative 'equivalence'

using Fuby

module Fuby
  module ::Enumerable # can't refine Module

    def longest_common_suffix *those
      zip(*those).map(&:reverse).take_while(:equivalence?).map(:first).map(&:reverse)
    end

  end
end
