require 'fuby/to_camel_case'

using Fuby

describe Symbol do
  describe "to_camelCase" do
    it "converts self to a camelCase symbol" do

      :html5_the_5th_element.to_camelCase.must_equal :html5The5thElement
      :HTML5TH.to_CamelCase.must_equal :Html5th
      :HTML5th.to_CamelCase.must_equal :HTML5th

    end
  end
end
