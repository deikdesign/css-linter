require("rules/spaces_comma.rb")
require "rspec"
RSpec.describe SpacesComma, "Spaces before comma" do
    it "should give a negative result for space after comma" do 
        negative_result = SpacesComma.new.analyze("a ,b ", 1, 10, "out")
        expect(negative_result).to eq (nil)
    end
   
    it "should give a positive result for space after comma" do 
        positive_result = SpacesComma.new.analyze("a, b", 1,10, "out")
        expect(positive_result).to eq (0)


    end

end
