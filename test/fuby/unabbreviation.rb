require 'fuby/unabbreviation'

using Fuby

describe Symbol do
  describe "unabbreviation" do
    it "gets the abbreviated form of the receiver" do

      :ascending.abbreviation = :asc
      :asc.unabbreviation.must_equal :ascending

      :desc.unabbreviation = :descending
      :desc.unabbreviation.must_equal :descending

    end
  end
  describe "unabbreviation=" do
    it "sets the abbreviation for the receiver" do

      :descending.abbreviation = :desc
      -> { :descending.abbreviation = :d }.must_raise ArgumentError

    end
  end
end
