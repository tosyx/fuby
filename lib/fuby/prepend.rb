module Fuby
  refine ::Module do

    def prepend *includes, &body
      self.send :prepend, *includes unless includes.empty?
      self.send :prepend, ::Module.new(&body) if block_given?
      self
    end

  end
  class Send

    def prepend *includes, &body
      @self.send :prepend, *includes unless includes.empty?
      @self.send :prepend, ::Module.new(&body) if block_given?
      @self
    end

  end
end
