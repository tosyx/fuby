require 'fuby/new'

using Fuby

describe Float do
  describe "new" do
    it "returns 0.0" do

      Float.new.must_equal 0.0

    end
  end
end
describe Integer do
  describe "new" do
    it "returns 0.0" do

      Integer.new.must_equal 0

    end
  end
end
