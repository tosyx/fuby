require 'fuby/abbreviation'

using Fuby

describe Symbol do
  describe "abbreviation" do
    it "gets the abbreviation for the receiver" do

      :ascending.abbreviation = :asc
      :ascending.abbreviation.must_equal :asc

      :desc.unabbreviation = :descending
      :descending.abbreviation.must_equal :desc

    end
  end
  describe "abbreviation=" do
    it "results in an error if the abbreviation is set twice" do

      :ascending.abbreviation = :asc
      -> { :ascending.abbreviation = :a }.must_raise ArgumentError

    end
  end
end
