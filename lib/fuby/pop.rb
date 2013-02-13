require 'fuby/_'

module Fuby
  refine ::Array do

    def pop i = 1
      return super i % length unless empty?
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
