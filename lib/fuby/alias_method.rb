require_relative 'send'
require_relative 'uuid'

module Fuby
  refine ::Module do

    def alias_method *sig
      case sig.length
      when 1
        sig.unshift new_name = Symbol.__uuid__
        self.send :alias_method, *sig
        new_name
      when 2
        self.send :alias_method, *sig
      else raise new TypeError
      end
    end

  end
  class Send

    def alias_method *sig
      case sig.length
      when 1
        sig.unshift new_name = Symbol.__uuid__
        @self.send :alias_method, *sig
        new_name
      when 2
        @self.send :alias_method, *sig
      else raise new TypeError
      end
    end

  end
end
