using Fuby

module Fuby
  refine ::Module do

    def define_object_method *sig, &blk
      self.define_singleton_method *sig, &blk
    end

  end
  refine ::Object do

    def define_object_method *sig, &blk
      self.class.define_method *sig, &blk
    end

  end
end
