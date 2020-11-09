# frozen_string_literal: true

class SpacesComma
  Message = 'Commas cannot be preceeded by a space'

  def analyze(line, _index, _total, _context)
    return !!(line =~ /[^ ],/) if line.include? ','

    true
  end
end
