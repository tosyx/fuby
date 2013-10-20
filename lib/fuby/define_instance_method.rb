module Fuby
  refine ::Module do

    def define_instance_method *sig, &blk
      self.send :define_method, *sig, &blk
    end

  end
  refine ::Object do

    def define_instance_method *sig, &blk
      self.send :define_singleton_method, *sig, &blk
    end

  end
end
