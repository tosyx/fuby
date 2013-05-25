require 'fuby/submodule'

using Fuby

describe Module do
  describe "submodule *includes" do
    it "returns a new module including self and the given *includes" do

      includes = [Module.new, Module.new, Module.new]

      Module.new.submodule *includes

    end
  end
end
