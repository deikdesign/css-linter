#!/usr/bin/env ruby

class TrailingSpaces
  Message = 'Line has trailing spaces'.freeze

  def analyze(line, _index, _total, _context)
    return false if line =~ /\s+$/

    true
  end
end
