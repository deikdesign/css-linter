# frozen_string_literal: true

class CommaSpaces
  Message = 'There must be a space after a comma'

  def analyze(line, _index, _total, _context)
    line !~ /,[^ ]/
  end
end
