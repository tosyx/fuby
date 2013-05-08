# require 'fuby/drop_while'

# using Fuby

# describe Array do
#   describe "drop_while predicate = Proc.new" do
#     it "returns a new array dropping the initial elements matching the given predicate" do

#       xs = [1, 2, 3, :four]

#       xs.drop_while { true }.must_equal []
#       xs.drop_while(Integer).must_equal [:four]

#     end
#   end
#   describe "drop_while! predicate = Proc.new" do
#     it "dropping the initial elements matching the given predicate, returning self" do

#       xs = [1, 2, 3, :four]

#       xs.drop_while!(Integer).must_equal xs
#       xs.must_equal [:four]

#     end
#   end
# end
