require_relative 'include'

module Fuby
  refine ::Module do

    def subclass *sig, &blk
      case self
      
      when Class
        Class.new self
      
      when Module
        Class.new.send.include self
      
      else super
      end.send.include *sig, &blk
    end

  end
end
