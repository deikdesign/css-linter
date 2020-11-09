# frozen_string_literal: true

class Indentation
  Message = 'Line must be indented by two spaces or tabs'

  def analyze(line, _index, _total, context)
    if context == 'block'
      !!(line =~ /^\s{2}/)
    else
      true
    end
  end
end
