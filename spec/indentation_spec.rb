require("rules/indentation.rb")
require "rspec"
RSpec.describe Indentation, "Indentation at beginning of line" do
    it "should give a negative result for indent with one spaces" do 
        negative_result = Indentation.new.analyze(" a:2", 1, 10, "block")
        expect(negative_result).to eq false
    end
    it "should give a negative result for indent with no spaces" do 
        negative_result = Indentation.new.analyze("abc", 1,10, "block")
        expect(negative_result).to eq false
    end
    it "should give a positive result for indent with two spaces" do 
        positive_result = Indentation.new.analyze("  abc", 1,10, "block")
        expect(positive_result).to eq true


    end
    it "should give a positive result for indent with two spaces" do 
        positive_result = Indentation.new.analyze("abc", 1,10, "outside")
        expect(positive_result).to eq true


    end


end