using Fuby

require 'securerandom'

module Fuby
  refine ::Range do

    def random
      min + ::SecureRandom.random_number(max - min)
    end

  end
  refine ::String.singleton_class do

    def random n = 64
      ::SecureRandom.random_bytes(64).codepoints.each_with_object("") { |n, s| s << n % 26 + 97 }
    end

  end
  refine ::Symbol.singleton_class do

    def random n = nil
      ::String.random(n).to_sym
    end

    def __random__ n = 64
      :"__%s__" % ::String.random(n)
    end

  end
end
