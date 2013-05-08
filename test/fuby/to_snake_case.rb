require 'fuby/to_snake_case'

using Fuby

describe Symbol do
  describe "to_snake_case" do
    it "converts self to a snake_case symbol" do

      :html5The5thElement.to_snake_case.must_equal :html5_the_5th_element
      :HTML5TH.to_snake_case.must_equal :html_5th
      :HTML5th.to_snake_case.must_equal :html_5th

    end
  end
end
