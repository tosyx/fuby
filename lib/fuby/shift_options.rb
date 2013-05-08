require_relative 'method_added'

module Fuby
  refine ::Array do

    def shift_options *defaults
      defaults.each_with_object Hash === first ? shift : {} do |default, opt|
        opt.merge!(default) { |key, preexisting| preexisting }
      end
    end

  end
end
