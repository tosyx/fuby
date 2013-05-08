require 'fuby/suffixes'

using Fuby

describe Array do
  describe "suffixes" do
    it "returns an Enumerable of the suffixes of self, longest first" do

      [1, 2, 3].suffixes.to_a.must_equal [[1, 2, 3], [2, 3], [3]]

    end
  end
end
