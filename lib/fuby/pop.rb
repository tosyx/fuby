module Fuby
  refine ::Array do

    def pop i = nil
      return super() unless i
      return super(i % length) unless empty?
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
