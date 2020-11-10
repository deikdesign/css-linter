class EmptyLine
  Message = "There must an empty line at the end of file"

  def analyze(line, index, total,  context)
      if(index==total-1)
          return line==""
      else
          return true
      end
  end
end
