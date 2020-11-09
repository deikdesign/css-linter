# frozen_string_literal: true

class EmptyLine
  Message = 'There must an empty line at the end of file'

  def analyze(line, index, total, _context)
    if index == total - 1
      line == ''
    else
      true
    end
  end
end
