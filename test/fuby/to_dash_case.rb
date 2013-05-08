require 'fuby/to_dash_case'

using Fuby

describe Symbol do
  describe "to_dash_case" do
    it "converts self to a dash-case symbol" do

      :html5_the_5th_element.to_dash_case.must_equal :"html5-the-5th-element"
      :HTML5TH.to_dash_case.must_equal :"html-5th"
      :HTML5th.to_dash_case.must_equal :"html-5th"

    end
  end
end
