class ZeroValues
    Message = "Zero Values donot need units"

    def analyze(line, index, total,  context)
        parts = line.split(":")

        if(parts[1])
            value = parts[1].strip.tr(";","")
            
            if(value.to_i==0)
                return value.length<=value.to_i.to_s.length
            else
                return true
            end
        else
            return true
        end
    end
end
