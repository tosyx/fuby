module Fuby
  refine ::Object do

    def send *sig, &blk
      return super unless sig.empty?
      return yield Send.new self if block_given?
      return Send.new self
    end

  end
  class Send

    def initialize receiver
      @self = receiver
    end

    def method_missing key, *sig, &blk
      @self.send key, *sig, &blk
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
