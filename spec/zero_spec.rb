# frozen_string_literal: true

require('rules/zero_values.rb')
require 'rspec'
RSpec.describe ZeroValues, 'Zero Values' do
  it 'should give a negative result for 0 value with units' do
    negative_result = ZeroValues.new.analyze('a: 0px ', 1, 10, 'out')
    expect(negative_result).to eq false
  end

  it 'should give a positive result non zero value with units' do
    positive_result = ZeroValues.new.analyze('a: 10px', 1, 10, 'out')
    expect(positive_result).to eq true
  end
  it 'should give a +ve result non zero value with no units' do
    positive_result = ZeroValues.new.analyze('a: 0', 1, 10, 'out')
    expect(positive_result).to eq true
  end
end
