require 'fuby/_'
require 'delegate'

using Fuby

module Fuby
  refine ::Object do

    def send *sig, &blk
      return Send.new self if sig.empty? && blk.nil?
      return instance_eval { eval %{ #{ sig.shift } *sig, &blk } }
    end

  end
  class Send < SimpleDelegator

    def method_missing *sig, &blk
      __getobj__.instance_eval { eval %{ #{ sig.shift } *sig, &blk } } # not exactly sure why __getobj__.send doesn't work...
    end

  end
end
