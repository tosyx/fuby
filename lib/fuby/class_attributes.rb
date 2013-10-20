require_relative 'attributes'

module Fuby
  refine ::Module do
    
    def class_attribute_set key, val
      (singleton_class.respond_to? :"#{ key }=") ? (singleton_class.send :"#{ key }=", val) : (class_variable_set "@@{ key }", val)
    end

    def class_attribute_get key
      (respond_to? key) ? (send key) : (class_variable_get :"@@#{ key }")
    end

    def class_attributes_set opt
      opt.each { |key, val| class_attribute_set key, val }
      self
    end

    def class_attributes_get *keys
      keys.map &(method :class_attribute_get)
    end

    alias_method :class_attributes_at, :class_attributes_get

    def class_attributes
      ClassAttributes.new self
    end

  end
  class ClassAttributes < Attributes

    def __name__
      :class_attributes
    end

  end
end
