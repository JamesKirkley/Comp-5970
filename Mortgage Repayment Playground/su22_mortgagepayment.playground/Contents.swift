import UIKit

func payment(a:Int,b:Int,c:Float) -> Float {
    
    let loanAmount = Float(a)
    let numberOfMonths = Float(b)
    let interestRate = c
    let monthlyRate = interestRate / 100
    let answer = loanAmount * monthlyRate / ( 1 - pow(1 + monthlyRate, -numberOfMonths))
    return answer
    
    
   }

print(payment(a:20000,b:72,c:0.36667))

print(payment(a:150000,b:30,c:5))
