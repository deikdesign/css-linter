class Indentation
    Message = "Line must be indented by two spaces or tabs"

    def analyze(line, index, total,  context)
        if(context=="block")
            return !!(line=~/^\s{2}/)
        else
            return true
        end
    end
end