require("rules/trailing_spaces.rb")
require "rspec"
RSpec.describe TrailingSpaces, "Trailing Spaces" do
    it "should give a negative result for single space" do 
        negative_result = TrailingSpaces.new.analyze("abc ", 1, 10, "out")
        expect(negative_result).to eq false
    end
    it "should give a negative result for single space" do 
        negative_result = TrailingSpaces.new.analyze("abc  ", 1,10, "out")
        expect(negative_result).to eq false
    end
    it "should give a positive result for no spaces" do 
        positive_result = TrailingSpaces.new.analyze("abc", 1,10, "out")
        expect(positive_result).to eq true


    end

end