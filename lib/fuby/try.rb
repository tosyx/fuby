module Fuby
  refine ::Object do

    def try *sig, &blk
      if sig.empty?
        if block_given?
          result = yield Try::Many.new self
          return result.__unwrap__ if Try::Base === result
          return result
        end
        return Try::Once.new self
      else
        return send *sig, &blk if respond_to? sig.first 
        return nil
      end
    end

    def try? *sig, &blk
      if sig.empty?
        if block_given?
          result = yield Try::Many.new self, self
          return result.__unwrap__ if Try::Base === result
          return result
        end
        return Try::Once.new self, self
      else
        return send *sig, &blk if respond_to? sig.first 
        return self
      end
    end

  end
  module Try

    class Base < BasicObject

      def initialize object, maybe = nil
        @object = object
        @maybe  = maybe
        @class  = (class << self; self end).superclass
      end

      def method_missing key, *sig, &blk
        return __wrap__ @object.send key, *sig, &blk if @object.respond_to? key
        return __wrap__ nil
      end

      def __unwrap__
        @object.nil? ? @maybe : @object
      end

      def __wrap__ result
        @class.new result, @maybe
      end

    end

    class Once < Base

      def __wrap__ result
        super.__unwrap__
      end

    end

    class Many < Base
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)

