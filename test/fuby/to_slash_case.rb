require 'fuby/to_slash_case'

using Fuby

describe String do
  describe "to_slash_case" do
    it "converts self to a slash/case string" do

      "html5The5thElement".to_slash_case.must_equal "html5/the/5th/element"
      "HTML5TH".to_slash_case.must_equal "html/5th"
      "HTML5th".to_slash_case.must_equal "html/5th"

    end
  end
end
