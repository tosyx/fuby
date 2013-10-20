require_relative 'equivalence'

using Fuby

module Fuby
  module ::Enumerable # can't refine Module

    def longest_common_prefix *those
      zip(*those).take_while(:equivalence?).map(:first)
    end

  end
end
