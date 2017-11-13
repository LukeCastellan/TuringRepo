function reversed (input : string) : string
var output1 : string
output1 := ""
for decreasing i : length(input) .. 1
output1 += input(i)
end for
result output1
end reversed

function glueThem (input1 : string, input2 : string, input3 : string) : string
result reversed (input1+input2) + input3
end glueThem

var userinword1 : string
var userinword2 : string
var userinword3 : string

get userinword1
get userinword2
get userinword3

put glueThem(userinword1, userinword2, userinword3)
