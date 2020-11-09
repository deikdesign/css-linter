class Indentation
    def analyze(line, index, total,  context)
        if(context=="block")
            return !!(line=~/^\s{2}/)
        else
            return true
        end
    end
end