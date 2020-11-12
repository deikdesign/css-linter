require('rules/new_line_semi_colon.rb')
require 'rspec'
RSpec.describe NewLineSemiColon, 'NewLineSemiColon' do
  it 'should give a negative result for no end of line semi colon' do
    negative_result = NewLineSemiColon.new.analyze('  abc', 1, 10, 'block')
    expect(negative_result).to eql(nil)
  end

  it 'should give a positive result for space after comma' do
    positive_result = NewLineSemiColon.new.analyze('a;', 1, 10, 'out')
    expect(positive_result).to eql true
  end
end
