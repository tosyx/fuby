require_relative 'abbreviation'

module Fuby
  refine ::Symbol do

    attr_reader :unabbreviation
    alias_method :unabbr, :unabbreviation

    def unabbreviation= sym
      raise ArgumentError, "`unabbreviation` of a Symbol must be a Symbol, found #{ sym.class }: #{ sym }" unless Symbol === sym
      raise ArgumentError, "`unabbreviation` of :#{ self } already :#{ unabbreviation }, found #{ sym }" unless @unabbreviation.nil? || @unabbreviation == sym
      return if @unabbreviation == sym
      @unabbreviation = sym and sym.abbreviation = self
    end

  end
end
