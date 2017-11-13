function reversed (input : string) : string
    var reversed : string
    reversed := ""
    for decreasing i : length (input) .. 1
	reversed += input (i)
    end for
    result reversed
end reversed

put reversed ("apple")
