require 'fuby/_'
using Fuby

module Fuby
  refine ::Array do

    def drop i = 1
      super i % length
    end

    def drop! i = 1
      shift i
      self
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
