require_relative 'uuid'
require_relative 'send'
require_relative 'include'
require_relative 'prepend'

module Fuby
  refine ::Module do
  
    def define_missing_method missing_reg, &missing_blk
      send :define_method, missing_method = Symbol.__uuid__, &missing_blk
      prepend {
        mod = self
        mod.send.define_method(:method_missing) { |key, *sig, &blk|
          return super key, *sig, &blk unless matched_sig = missing_reg.match(key)
          matched_sig = matched_sig.to_a.drop 1
          mod.send.define_method(key) { |*sig, &blk| send missing_method, *(matched_sig + sig), &blk }
          send key, *sig, &blk
        }
        mod.send.define_method(:respond_to?) { |key| missing_reg === key || super(key) }
      }
    end

  end
end
