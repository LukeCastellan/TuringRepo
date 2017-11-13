function interestCalc (principal : real, rate : real) : real
    var interest : real
    interest := principal + principal * rate / 100
    result interest
end interestCalc

put interestCalc (100, 5)
