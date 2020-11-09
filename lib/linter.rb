
require("./lib/rules/comma_spaces.rb")
require("./lib/rules/empty_line.rb")
require("./lib/rules/indentation.rb")
require("./lib/rules/new_line_semi_colon.rb")
require("./lib/rules/spaces_comma.rb")
require("./lib/rules/trailing_spaces.rb")
require("./lib/rules/zero_values.rb")

class Linter

    def initialize(csvData)
        @csvData = csvData
    end
    def lint
        rules = [CommaSpaces.new, EmptyLine.new, Indentation.new, NewLineSemiColon.new, SpacesComma.new, TrailingSpaces.new, ZeroValues.new]
        errors = {}
        lines = @csvData.split("\n")
        block_open = false
        lines.each_with_index do |line, index|
      
                block_open=false  if(line=~/\}/)

                rules.map{|rule| 
                    result = rule.analyze(line, index, lines.length, block_open ? "block": "outside") 
                #puts [line, index, lines.length, block_open ? "block": "outside"].inspect
                    if(!result)
                        errors[index+1] = errors[index+1] || []
                        errors[index+1] << rule.class::Message
                    end
                }
                block_open=true  if(line=~/\{/)
              
        end
        return errors

    end
end