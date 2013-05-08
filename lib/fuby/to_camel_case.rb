require_relative 'to_components'

using Fuby

module Fuby
  refine ::String do

    def to_camelCase
      components = to_components
      first      = components.shift.downcase
      components.map! { |str| str.sub /[A-z0-9]/, &:upcase }
      components.unshift first
      components.join
    end

    def to_CamelCase
      to_components.map! { |str| str.sub /[A-z0-9]/, &:upcase }.join
    end

  end
  refine ::Symbol do

    def to_camelCase
      @to_camelCase ||= to_s.to_camelCase.to_sym
    end

    def to_CamelCase
      @to_CamelCase ||= to_s.to_CamelCase.to_sym
    end

  end
end
