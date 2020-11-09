# frozen_string_literal: true

require('./lib/linter')

File.open('./bin/test.css', 'r') do |f|
  data = f.read
  linter = Linter.new(data)
  errors = linter.lint
  # puts errors
  errors.each do |key, value|
    value.each do |error|
      puts "Line #{key}: #{error}"
    end
  end
end
