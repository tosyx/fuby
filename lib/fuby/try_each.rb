require_relative 'try'
using Fuby

module Fuby
  refine ::Object do

    def try_each *sig, &blk
      return Try::Each.new self if sig.empty? && !blk
      return each { |arg| arg.try *sig, &blk }
    end

  end
  module Try

    class Each < Base

      def method_missing *sig, &blk
        @object.each { |arg| arg.try *sig, &blk }
      end

    end

  end
end
