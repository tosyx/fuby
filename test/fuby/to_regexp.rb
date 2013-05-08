require 'fuby/to_regexp'

using Fuby

describe Regexp do
  describe "to_regexp" do
    it "returns a copy of self" do

      re = /fun/
      re.to_regexp.must_equal re.dup

    end
  end
end

describe Array do
  describe "to_regexp" do
    it "returns the disjunction of terms contained in self" do

      [ /abra/, /cadabra/ ].to_regexp.must_equal /abra|cadabra/

    end
  end
end

describe String do
  describe "to_regexp" do
    it "returns a Regexp that matches this string exactly" do

      "foo".must_match "foo".to_regexp
      "__foo__".must_match "foo".to_regexp
      "a foo".must_match "foo".to_regexp
      "a food".wont_match "foo".to_regexp
      "food".wont_match "foo".to_regexp

    end
  end
end
