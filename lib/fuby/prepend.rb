module Fuby
  refine ::Module do

    def prepend *includes, &body
      super *includes unless includes.empty?
      super ::Module.new(&body) if block_given?
      self
    end

  end
end
