require_relative 'attributes'

module Fuby
  refine ::Object do

    def instance_attribute_set key, val
      (respond_to? "#{ key }=") ? (send "#{ key }=", val) : (instance_variable_set "@{ key }", val)
    end

    def instance_attribute_get key
      (respond_to? key) ? (send key) : (instance_variable_get "@#{ key }")
    end

    def instance_attributes_set opt
      opt.each { |key, val| instance_attribute_set key, val }
      self
    end

    def instance_attributes_get key
      keys.map &(method :instance_attribute_get)
    end

    alias_method :instance_attributes_at, :instance_attributes_get

    def instance_attributes
      InstanceAttributes.new self
    end

  end
  class InstanceAttributes < Attributes

    def __name__
      :instance_attributes
    end

  end
end
