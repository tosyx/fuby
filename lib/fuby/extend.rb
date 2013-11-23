require_relative 'send'

module Fuby
  refine ::Module do

    def extend *extends, &body
      self.send :extend, *extends unless extends.empty?
      self.send :extend, ::Module.new(&body) if block_given?
      self
    end

  end
  class Send

    def extend *extends, &body
      @self.send :extend, *extends unless extends.empty?
      @self.send :extend, ::Module.new(&body) if block_given?
      @self
    end

  end
end
