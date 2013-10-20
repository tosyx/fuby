using Fuby

module Fuby
  refine ::Module do

    def define_instance_method *sig, &blk
      self.define_method *sig, &blk
    end

  end
  refine ::Object do

    def define_instance_method *sig, &blk
      self.define_singleton_method *sig, &blk
    end

  end
end
