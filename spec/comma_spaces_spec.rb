require("rules/comma_spaces.rb")
require "rspec"
RSpec.describe CommaSpaces, "Comma Spaces" do
    it "should give a negative result for no space after comma" do 
        negative_result = CommaSpaces.new.analyze("a,b ", 1, 10, "out")
        expect(negative_result).to eq false
    end
   
    it "should give a positive result for space after comma" do 
        positive_result = CommaSpaces.new.analyze("a, b", 1,10, "out")
        expect(positive_result).to eq true


    end

end