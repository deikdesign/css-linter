class CommaSpaces
  Message = "There must be a space after a comma"

  def analyze(line, index, total,  context)
      return (line=~/,[^ ]/)
  end
end