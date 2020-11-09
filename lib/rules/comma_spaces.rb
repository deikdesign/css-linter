class CommaSpaces
    def analyze(line, index, total,  context)
        return !(line=~/,[^ ]/)
    end
end