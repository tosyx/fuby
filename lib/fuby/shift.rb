require 'fuby/_'
require_relative 'method_added'

module Fuby
  refine ::Array do

    def shift i = 1
      return super i % length unless empty?
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
