#!/usr/bin/env ruby

class EmptyLine
  Message = 'There must an empty line at the end of file'.freeze

  def analyze(line, index, total, _context)
    if index == total - 1
      line == ''
    else
      true
    end
  end
end
