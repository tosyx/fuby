require 'fuby/uuid'

using Fuby

describe Symbol do
  describe :uuid do

    it "generates a universally unique identifier" do
      Symbol.uuid.wont_be_same_as Symbol.uuid
    end

    it "generates identifiers with format [0-9a-z]+(_[0-9a-z]+)+" do
      Symbol.uuid.must_match /^[0-9a-z]+(_[0-9a-z]+)+$/
    end

  end
  describe "method __uuid" do # can't `describe` anything prefixed with underscore!

    it "generates identifiers with format __[0-9a-z]+(_[0-9a-z]+)+" do
      Symbol.__uuid.must_match /^__[0-9a-z]+(_[0-9a-z]+)+$/
    end

  end
  describe "method __uuid__" do

    it "generates identifiers with format __[0-9a-z]+(_[0-9a-z]+)+" do
      Symbol.__uuid__.must_match /^__[0-9a-z]+(_[0-9a-z]+)+__$/
    end

  end
end
