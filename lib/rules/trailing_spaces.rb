# frozen_string_literal: true

class TrailingSpaces
  Message = 'Line has trailing spaces'

  def analyze(line, _index, _total, _context)
    return false if line =~ /\s+$/

    true
  end
end
