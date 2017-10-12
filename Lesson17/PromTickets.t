% programmer: Paul Kuang
%
%       date: 2017-10-04
%
%  file name: PromTickets.t
%
%    purpose: To calculate the gross profit required to break even for a
%    certain prom.
%
%      input: Total Expenses incurred
%
% processing: Calculates the gross profit required to be > expenses
%
%     output: Numbers of ticket sales required to break even with expense

const miscexpense := 100
const ticketprice := 65

var decoexpense : real
var djexpense : real
var foodexpense : real
var hallexpense : real
var newtotalexpense : real
var ticketsales : int
var totalexpense : real
var waitingstaffexpense : real

loop
    put "Please enter total expenses for Food: $" ..

    get foodexpense

    put "Please enter total expenses for DJ: $" ..

    get djexpense

    put "Please enter total expenses for The Hall: $" ..

    get hallexpense

    put "Please enter total expenses for Decoration: $" ..

    get decoexpense

    put "Please enter total expenses for Waiting Staff: $" ..

    get waitingstaffexpense

    totalexpense := foodexpense + djexpense + hallexpense + decoexpense + waitingstaffexpense

    newtotalexpense := totalexpense + miscexpense

    put "Total Expense incurred: $" ..

    put newtotalexpense

    ticketsales := newtotalexpense div ticketprice

    put "You will need to sell ", ticketsales, " Tickets at the minimum to " ..

    put "break even with all expense"
end loop
