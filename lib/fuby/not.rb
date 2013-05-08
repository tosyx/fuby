using Fuby

module Fuby
  refine ::Proc do

    def not
      proc { |*sig, &blk| ! call *sig, &blk }
    end

  end
  refine ::TrueClass do

    def not
      false
    end

  end
  refine ::FalseClass do

    def not
      true
    end

  end
end
