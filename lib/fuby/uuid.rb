require_relative 'format'

require 'securerandom'

module Fuby
  refine ::String.singleton_class do

    def uuid
      ::SecureRandom.uuid.gsub '-', '_'
    end

  end
  refine ::Symbol.singleton_class do

    def uuid
      ::String.uuid.to_sym
    end

    def __uuid
      :"__%s" % ::String.uuid
    end

    def __uuid__
      :"__%s__" % ::String.uuid
    end

  end
end
