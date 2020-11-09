class SpacesComma
    def analyze(line, index, total,  context)
        return !!(line=~/[^ ],/)
    end
end
