# frozen_string_literal: true

class ZeroValues
  Message = 'Zero Values donot need units'

  def analyze(line, _index, _total, _context)
    parts = line.split(':')

    if parts[1]
      value = parts[1].strip.tr(';', '')

      if value.to_i.zero?
        value.length <= value.to_i.to_s.length
      else
        true
      end
    else
      true
    end
  end
end
