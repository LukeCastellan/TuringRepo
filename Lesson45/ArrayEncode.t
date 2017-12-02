View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Basic Encryption")

var algorithm : array 1 .. 26 of string
var fileNum : int
var lineNum : string
var userinString : string

algorithm (1) := "pha" %alp
algorithm (2) := "eta" %bet
algorithm (3) := "lie" %cha
algorithm (4) := "lta" %del
algorithm (5) := "lon" %ep
algorithm (6) := "rot" %fox
algorithm (7) := "mma" %ga
algorithm (8) := "tel" %ho
algorithm (9) := "ota" %i
algorithm (10) := "ett" %jul
algorithm (11) := "ppa" %ka
algorithm (12) := "bda" %la
algorithm (13) := "u11" %m
algorithm (14) := "u22" %n
algorithm (15) := "ron" %o
algorithm (16) := "i11" %p
algorithm (17) := "ten" %quit
algorithm (18) := "ren" %rolar
algorithm (19) := "gma" %keysig
algorithm (20) := "uri" %tauri
algorithm (21) := "on2" %upupup
algorithm (22) := "tor" %vi
algorithm (23) := "key" %whisk
algorithm (24) := "i22" %ecks
algorithm (25) := "kee" %yanked
algorithm (26) := "ta2" %zpm

function encode (input : string) : string
    var output : string
    output := ""
    for i : 1 .. length (input)
	if ord (input (i)) - 96 > 0
		then
	    output += algorithm (ord (input (i)) - 96)
	end if
    end for
    result output
end encode

procedure writeTo (input : string)
    var encoded : string
    encoded := encode (userinString)
    open : fileNum, "encoded.txt", put
    if fileNum > 0
	    then
	put : fileNum, encoded
    end if
end writeTo

put "Ensure there is encoded.txt in same directory as program."
put "Enter string to encode: "
get userinString
writeTo (userinString)
