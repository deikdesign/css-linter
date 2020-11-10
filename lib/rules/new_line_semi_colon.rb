class NewLineSemiColon
  Message = "There must be a newline after semi colon"

  def analyze(line, index, total,  context)
      return (line=~/;$/) if context=="block"
      return true
  end
end