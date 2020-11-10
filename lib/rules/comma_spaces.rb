#!/usr/bin/env ruby

class CommaSpaces
  Message = 'There must be a space after a comma'.freeze

  def analyze(line, _index, _total, _context)
    (line =~ /,[^ ]/)
  end
end
