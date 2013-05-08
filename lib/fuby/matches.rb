module Fuby
  module ::Enumerable # can't refine Module

    def matches? that
      count == that.count and matches_componentwise? that
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
