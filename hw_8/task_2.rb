def converter(measureFrom, measureTo, value)
    value = value.to_f
    hashMeasure = {
        :m => 1,
        :km => 1000.0, 
        :dm => 0.1,
        :cm => 0.01, 
        :mm => 0.001, 
        :mkm => 0.000001,
        :nm => 0.000000001,
        :A => 0.0000000001,
        :lea => 4828.032, 
        :mi => 1609344, 
        :fur => 201.168,
        :ch => 20.1168,
        :rd => 5.0292,
        :yd => 0.9144,
        :cu => 0.4572,
        :ft => 0.3048,
        :sp => 0.2286,
        :hd => 0.1016,
        :in => 0.0254,
        :ln => 0.0021666666666,
        :cl => 0.000254,
        :mil => 0.0000254,
        :nl => 5556.0,
        :nmi => 1852.0,
        :cab => 185.2,     # Кабельт
        :ftm => 1.8288,
        :nmiUSA => 1853.248, 
        :nmiBr => 1853.1848,
        :K => - 273.15,
        :F => -32,
        :C => 1.0 
    }

    if  measureTo == measureFrom
        return value

    elsif measureTo == :K 
        answer = value + 273.15
        if measureFrom == :F
            answer += (value - 32) * 5 / 9
            return answer
        end
        return answer

    elsif measureTo == :F
        answer = value * 9 / 5 + 32
        if measureFrom == :K
            answer -= 273.15 * 9 / 5
            return answer
        end
        return answer

    elsif measureTo == :C
        answer = value * hashMeasure[measureFrom]
        return answer

    else
        measureFromInMeters = 1 / hashMeasure[measureFrom]
        answer = value * hashMeasure[measureTo] * measureFromInMeters
        return answer
        
    end

end

print converter(:C, :K, 2)