require_relative 'bind'
require_relative 'define_missing_method'

using Fuby

module Fuby

  refine ::Object do

    def intercept &intercept
      Intercept.new self, &intercept
    end

  end

  class Intercept < BasicObject

    def initialize intercepted, &intercept
      @intercept = intercept.bind intercepted
    end

    def method_missing *sig, &blk
      @intercept.call *sig, &blk
    end

  end
end
