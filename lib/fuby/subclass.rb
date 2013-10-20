require_relative 'include'

module Fuby
  refine ::Module do

    def subclass *sig, &blk
      case self
      
      when Class
        Class.new self
      
      when Module
        Class.new.include! self
      
      else super
      end.include! *sig, &blk
    end

  end
end
