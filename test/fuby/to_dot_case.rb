require 'fuby/to_dot_case'

using Fuby

describe String do
  describe "to_dot_case" do
    it "converts self to a dot.case string" do

      "html5The5thElement".to_dot_case.must_equal "html5.the.5th.element"
      "HTML5TH".to_dot_case.must_equal "html.5th"
      "HTML5th".to_dot_case.must_equal "html.5th"

    end
  end
end
