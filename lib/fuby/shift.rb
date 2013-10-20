module Fuby
  refine ::Array do

    def shift i = nil
      return super() unless i
      return super(i % length) unless empty?
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
