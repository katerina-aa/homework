def TransformToRomanNumber(arrRomanSym, num)
    answer = ''
   
    if num < 4
      num.times { answer << arrRomanSym[0] }
    elsif num == 4
      answer <<  arrRomanSym[0] + arrRomanSym[1]
    elsif num == 5
      answer <<  arrRomanSym[1]
    elsif num > 5 and num < 9
      answer <<  arrRomanSym[1]
      (num - 5).times { answer << arrRomanSym[0] }
    else 
      answer << arrRomanSym[0] + arrRomanSym[2]
    end
  
    return answer
end
  
  
def RomanNumber(num)
    romanSymbols = ['I', 'V', 'X', 'L', 'C', 'D', 'M', 'V^', 'X^'] 
  
    answer = ''
    arrNum = num.digits.reverse
    numLen = arrNum.size
  
    while numLen > 0 
      answer << TransformToRomanNumber(romanSymbols[(numLen * 2 - 2) .. numLen * 2], arrNum[-numLen])
      numLen -= 1
    end
  
    return answer
end
    
print RomanNumber(1450)