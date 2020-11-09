class SpacesComma
    Message = "Commas cannot be preceeded by a space"

    def analyze(line, index, total,  context)
        
        return !!(line=~/[^ ],/) if(line.include? ",")
        return true
    end
end
