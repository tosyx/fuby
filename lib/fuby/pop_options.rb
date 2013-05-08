module Fuby
  refine ::Array do

    def pop_options *defaults
      defaults.each_with_object (Hash === last ? pop : {}) do |dft, opt|
        opt.merge!(dft) { |key, val| val }
      end
    end

    def push_options *defaults
      pop_options(*defaults).tap { |opt| push opt }
    end

  end
end
