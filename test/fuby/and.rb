require 'fuby/and'

using Fuby

describe Hash do
  describe "& that" do
    it "creates a new hash by intersecting `self` and `that`" do

      ({ a:1 } & { b:2 }).must_equal Hash.new
      ({ a:1, b:2 } & { b:2, c:3 }).must_equal b:2

    end
  end
end
