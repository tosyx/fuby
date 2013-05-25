require_relative 'uuid'

using Fuby

module Fuby
  refine ::Module do
  protected
  
    def define_missing_method missing_reg, &missing_blk
      mod = self

      send :define_method, missing_method = Symbol.__uuid__, &missing_blk

      alias_method was_method_missing = Symbol.__uuid__, :method_missing

      define_method :method_missing do |key, *sig, &blk|
        return send was_method_missing, key, *sig, &blk unless matched_sig = missing_reg.match(key)
        
        matched_sig = matched_sig.to_a.drop 1

        mod.send :define_method, key do |*sig, &blk|
          send missing_method, *(matched_sig + sig), &blk
        end
        
        send key, *sig, &blk
      end

      alias_method was_respond_to = Symbol.__uuid__, :respond_to?

      define_method :respond_to? do |key|
        missing_reg === key or send was_respond_to, key
      end
    end

  end
end
