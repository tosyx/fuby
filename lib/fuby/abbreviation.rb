require 'fuby/unabbreviation'

using Fuby

module Fuby
  refine ::Symbol do

    attr_reader :abbreviation
    alias_method :abbr, :abbreviation

    def abbreviation= sym
      raise ArgumentError, "`abbreviation` of a Symbol must be a Symbol, found #{ sym.class }: #{ sym }" unless Symbol === sym
      raise ArgumentError, "`abbreviation` of :#{ self } already :#{ abbreviation }, found #{ sym }" unless @abbreviation.nil? || @abbreviation == sym
      return if @abbreviation == sym
      @abbreviation = sym
      sym.instance_variable_set :@unabbreviation, self
    end

  end
end
