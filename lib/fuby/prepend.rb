module Fuby
  refine ::Module do

    def prepend! *includes, &body
      prepend *includes unless includes.empty?
      prepend ::Module.new(&body) if block_given?
      self
    end

  end
end
