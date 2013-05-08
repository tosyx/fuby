using Fuby

module Fuby
  refine ::Module do
  protected
  
    def define_missing_method missing_reg, &missing_blk
      prepend do
        mod = self

        define_method :method_missing do |key, *sig, &blk|
          super key, *sig, &blk unless matched_sig = missing_reg.match(key)
          matched_sig = matched_sig.to_a.drop 1
          mod.send :define_method, key do |*sig, &blk|
            missing_blk.call *(matched_sig + sig), &blk
          end
          send key, *sig, &blk
        end
        
        define_method :respond_to? do |key|
          missing_reg === key or super key
        end
      
      end
    end

  end
end
