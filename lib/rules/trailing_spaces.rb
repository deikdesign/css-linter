class TrailingSpaces 

    message = "Line has trailing spaces"
    

    def analyze(line, index, total,  context)
        if(line=~/\s+$/)
            return false
        end
        return true

    end
end