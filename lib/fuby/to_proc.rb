module Fuby
  refine ::Array do

    def to_proc
      proc &method(:[])
    end

  end
  refine ::Hash do
    
    def to_proc
      proc do |arg|
        if has_key? arg
          self[arg]
        else
          self[keys.detect { |key| key === arg }]
        end
      end
    end

  end
  refine ::String do

    def to_proc
      proc { |*sig| format self, *sig }
    end

  end
  refine ::Regexp do
    
    def to_proc
      proc do |arg|
        arg[ arg.length - 1] if arg = match(arg)
      end
    end

  end
  refine ::Integer do

    def to_proc
      proc { |arg| arg[self] }
    end

  end
end
