require 'fuby/prefixes'

using Fuby

describe Array do
  describe "prefixes" do
    it "returns an Enumerable of the prefixes of self, longest first" do

      [1, 2, 3].prefixes.to_a.must_equal [[1, 2, 3], [1, 2], [1]]

    end
  end
end
