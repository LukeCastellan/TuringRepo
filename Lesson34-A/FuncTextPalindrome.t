function reversed (input : string) : string
    var reversed : string
    reversed := ""
    for decreasing i : length (input) .. 1
	reversed += input (i)
    end for
    result reversed
end reversed

function Palindrome (input : string) : boolean
    if input = reversed (input)
	    then
	result true
    else
	result false
    end if
end Palindrome

put reversed ("bob")
put Palindrome ("bob")
