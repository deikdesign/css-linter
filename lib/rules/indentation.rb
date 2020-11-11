#!/usr/bin/env ruby

class Indentation
  MESSAGE = 'Line must be indented by two spaces or tabs'.freeze

  def analyze(line, _index, _total, context)
    if context == 'block'
      (line =~ /^\s{2}/)
    else
      true
    end
  end
end
