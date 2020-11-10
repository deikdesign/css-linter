#!/usr/bin/env ruby

class SpacesComma
  Message = 'Commas cannot be preceeded by a space'.freeze

  def analyze(line, _index, _total, _context)
    return (line =~ /[^ ],/) if line.include? ','

    true
  end
end
