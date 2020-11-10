#!/usr/bin/env ruby

class NewLineSemiColon
  Message = 'There must be a newline after semi colon'.freeze

  def analyze(line, _index, _total, context)
    return (line =~ /;$/) if context == 'block'

    true
  end
end
