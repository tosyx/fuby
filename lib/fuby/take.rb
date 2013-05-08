using Fuby

module Fuby
  refine ::Array do

    def take i = 1
      return [] if empty?
      return super i % length
    end

    def take! i = 1
      pop length - i % length
      self
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
