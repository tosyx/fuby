require 'fuby/otherwise'

using Fuby

describe Object do
  describe 'otherwise(that, &block)' do
    it "returns self" do

      5.otherwise(6).must_be_same_as 5

    end
  end

end
describe NilClass do
  describe 'otherwise(that)' do
    it "returns that" do

      nil.otherwise(5).must_be_same_as 5

    end
  end
  describe 'otherwise{that}' do
    it "returns that" do

      nil.otherwise{5}.must_be_same_as 5

    end
  end
end
