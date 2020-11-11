class NewLineSemiColon
  MESSAGE = 'There must be a newline after semi colon'.freeze

  def analyze(line, _index, _total, context)
    return (line =~ /;$/) if context == 'block'

    true
  end
end
