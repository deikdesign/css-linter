require_relative('../lib/linter')

filename = ARGV[0]
File.open(filename, 'r') do |f|
  data = f.read
  linter = Linter.new(data)
  errors = linter.lint
  # puts errors
  puts 'There are no issues' if errors.length <= 0

  errors.each do |key, value|
    value.each do |error|
      puts "Line #{key}: #{error}"
    end
  end
end
