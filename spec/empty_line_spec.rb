require("rules/empty_line.rb")
require "rspec"
RSpec.describe EmptyLine, "Empty Line" do
    it "should give a positive result for a non empty life in the middle of file" do 
        negative_result = EmptyLine.new.analyze("abc", 5, 10, "outside")
        expect(negative_result).to eq true
    end
    it "should give a negative result for a non empty line in the end of the file" do 
        negative_result = EmptyLine.new.analyze("ab", 9,10, "outside")
        expect(negative_result).to eq false
    end
    it "should give a positive result for empty line" do 
        positive_result = EmptyLine.new.analyze("", 9,10, "outside")
        expect(positive_result).to eq true


    end

end