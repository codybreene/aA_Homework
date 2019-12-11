// Notes on Ways to call a function

// function style, method-style, constructor-style
// fun(arg1, arg2);
// obj.method(arg1, arg2);
// new ClassName(arg1, arg2); 

// //hammertime1

// function hammertime (timeTowait) {
//     global.setTimeout(function () { //alert / window used in chrome console
//     alert("STOP. It's hammertime.")
// }, timeTowait)}

// hammertime(5000);

// //hammerTime2

// function hammerTime2 (time) {
//     window.setTimeout(() => alert(`${time} is the best time for hammering`), 2500)
// }


//tea and crimpits 
const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

reader.question('Would you like some tea?', function (res) {
    first = res;
    if (first === 'Yes') {
        reader.question('Would you like crimpits?', function(res2) {
            second = res2;
        })
    }
    console.log(`So you'd like ${first} and ${second}?`)
});