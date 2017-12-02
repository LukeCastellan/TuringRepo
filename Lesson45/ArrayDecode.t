View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Basic Encryption Decryption")

var algorithm : array 1 .. 26 of string
var fileName : string
var fileNum : int
var lineContent : string
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

function decode (input : string) : string
    var output2 : string
    output2 := ""
    for i : 1 .. length (input) by 3
	for i2 : 1 .. 26
	    if index (algorithm (i2), input (i .. i + 2)) not= 0
		    then
		output2 += chr (i2 + 96)
	    end if
	end for
    end for
    result output2
end decode

function readFrom : string
    var output : string
    open : fileNum, "encoded.txt", get
    if fileNum > 0
	    then
	loop
	    exit when eof (fileNum)
	    get : fileNum, lineContent : *
	    output := lineContent
	    result output
	end loop
    else
	result "Failed to retrieve file."
    end if
end readFrom

put "Press any key to decode."
loop
    exit when hasch
end loop
put decode (readFrom)
