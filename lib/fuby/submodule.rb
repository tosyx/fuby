require_relative 'include'

module Fuby
  refine ::Module do

    def submodule *sig, &blk
      case self
      
      when Class
        Class.new self
      
      when Module
        Module.new.include! self
      
      else super
      end.include! *sig, &blk
    end

  end
end
