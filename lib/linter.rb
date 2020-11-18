require_relative('../lib/rules/comma_spaces.rb')
require_relative('../lib/rules/empty_line.rb')
require_relative('../lib/rules/indentation.rb')
require_relative('../lib/rules/new_line_semi_colon.rb')
require_relative('../lib/rules/spaces_comma.rb')
require_relative('../lib/rules/trailing_spaces.rb')
require_relative('../lib/rules/zero_values.rb')

# Linter
class Linter
  RULES = [CommaSpaces.new, EmptyLine.new, Indentation.new,
           NewLineSemiColon.new, SpacesComma.new, TrailingSpaces.new, ZeroValues.new].freeze
  def initialize(csv_data)
    @csv_data = csv_data
    @lines = @csv_data.split("\n")
  end

  def lint
    errors = {}
    block_open = false
    @lines.each_with_index do |line, index|
      block_open = false if line =~ /\}/
      RULES.map do |rule|
        result = rule.analyze(line, index, @lines.length, block_open ? 'block' : 'outside')
        add_to_errors(errors, index, rule) unless result
      end
      block_open = true if line =~ /\{/
    end
    errors
  end

  def add_to_errors(errors, index, rule)
    errors[index + 1] = errors[index + 1] || []
    errors[index + 1] << rule.class::MESSAGE
  end
end
