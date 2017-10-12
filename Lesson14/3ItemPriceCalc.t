% programmer: Paul Kuang
%
%       date: 2017-10-03
%
%  file name: 3ItemPriceCalc.t
%
%    purpose: To give an output of the final price based on the user's input
%    (3 items' price and quantity)
%
%      input: The price of item 1, followed by quantity, repeated for two more
%      items
%
% processing: Subtotal price is calculated by price and quantity, then tax is
% calculated and added
%
%     output: The final price of the items, and the tax

const canadataxrate := 0.05
const hstrate := 0.08

var canadatax : real
var finalprice : real
var finalpriceavg : real
var hst : real
var itemprice1 : real
var itemprice2 : real
var itemprice3 : real
var itemqty1 : real
var itemqty2 : real
var itemqty3 : real
var itemqtytotal : real
var subtotal : real
var subtotalavg : real

loop
    put "Please enter the price for item #1: $" ..

    get itemprice1

    put "Please enter the quantity for item #1: " ..

    get itemqty1

    put "Please enter the price for item #2: $" ..

    get itemprice2

    put "Please enter the quantity for item #2: " ..

    get itemqty2

    put "Please enter the price for item #3: $" ..

    get itemprice3

    put "Please enter the quantity for item #3: " ..

    get itemqty3

    itemqtytotal := itemqty1 + itemqty2 + itemqty3
    subtotal := itemprice1 * itemqty1 + itemprice2 * itemqty2 + itemprice3 * itemqty3
    subtotalavg := subtotal / itemqtytotal
    canadatax := subtotal * canadataxrate
    hst := subtotal * hstrate
    finalprice := subtotal + canadatax + hst
    finalpriceavg := finalprice / itemqtytotal

    put "The Subtotal is: $" ..

    put subtotal

    put "The average per item before tax is: $" ..

    put subtotalavg : 0 : 2

    put "The Canadian Tax is: $" ..

    put canadatax : 0 : 2

    put "The Sales Tax is: $" ..

    put hst : 0 : 2

    put "The Final Price is: $" ..

    put finalprice : 0 : 2

    put "The average per item after tax is: $" ..

    put finalpriceavg : 0 : 2

    put skip

end loop
