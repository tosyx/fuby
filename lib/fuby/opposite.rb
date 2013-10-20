module Fuby

  refine ::Symbol do

    attr_reader :opposite

    def opposite= sym
      raise ::ArgumentError, "`opposite` of a Symbol must be a Symbol, found #{ sym.class }: #{ sym }" unless ::Symbol === sym
      raise ::ArgumentError, "`opposite` of :#{ self } already :#{ opposite }, found: #{ sym }" unless @opposite.nil? || @opposite == sym
      return if @opposite == sym
      @opposite = sym and sym.opposite = self
    end

  end

  :up          .opposite = :down
  :top         .opposite = :bottom
  :left        .opposite = :right
  :first       .opposite = :last
  :top_left    .opposite = :bottom_right
  :bottom_left .opposite = :top_right
  :asc         .opposite = :desc
  :ascending   .opposite = :descending
  :to          .opposite = :from
  :next        .opposite = :previous

end
