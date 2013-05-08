
module Fuby
  refine ::Enumerable do

    def to_tok
      ::Proc.new &method(:[])
    end

  end
  refine ::Hash do

    def to_tok
      invert.to_proc
    end

  end
  refine ::Regexp do
    
    def to_tok
      proc do |str|
        match = str.match self
        match.names[ match.captures.index &:just? ].to_sym
      end
    end

  end
end
