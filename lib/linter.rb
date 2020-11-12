require_relative('../lib/rules/comma_spaces.rb')
require_relative('../lib/rules/empty_line.rb')
require_relative('../lib/rules/indentation.rb')
require_relative('../lib/rules/new_line_semi_colon.rb')
require_relative('../lib/rules/spaces_comma.rb')
require_relative('../lib/rules/trailing_spaces.rb')
require_relative('../lib/rules/zero_values.rb')

class Linter
  def initialize(csvdata)
    @csvdata = csvdata
  end

  def lint
    rules = [CommaSpaces.new, EmptyLine.new, Indentation.new]
    rules = [NewLineSemiColon.new, SpacesComma.new, TrailingSpaces.new, ZeroValues.new]
    errors = {}
    lines = @csvdata.split("\n")
    block_open = false
    lines.each_with_index do |line, index|
      rules.map do |rule|
        result = rule.analyze(line, index, lines.length, block_open ? 'block' : 'outside')
        unless result
          errors[index + 1] = errors[index + 1] || []
          errors[index + 1] << rule.class::MESSAGE
        end
      end
      block_open = true if line =~ /\{/
    end
    errors
  end
end
