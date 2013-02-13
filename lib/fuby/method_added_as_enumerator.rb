require 'fuby/_'

module Fuby
  refine ::Module do

    def method_added_as_enumerator *names
      names.each do |name|
        prepend do
          define_method name do |&blk|
            return super if blk
            ::Enumerator.new { |result| super { |*sig| result.<< blk.call *sig } }
          end
        end
      end
    end


  end
end
