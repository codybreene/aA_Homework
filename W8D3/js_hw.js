// titleize

function titleize(names, callback) {
    mapped_arr = names.map(function(val) {
        return `Mx. ${val} Jingleheimer Schmidt`;
    })
    callback(mapped_arr);
}

let names = ['Tody', 'Cody', 'Tory']
titleize(names, function(names) {
    names.forEach(element => {
        console.log(element)
    });
})

// Constructor

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRR!!!`)
}

Elephant.prototype.grow = function () {
    this.height+=12
}

Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick)
    console.log(`${this.name} learned ${trick}`);
    console.log(`${this.name} now knows: ${this.tricks.join(', ')}`);
}

Elephant.prototype.play = function () {
    const dec = Math.floor(Math.random() * this.tricks.length)
    const verb = this.tricks[dec]
    console.log(`${this.name} is ${verb}`);
}


let Toto = new Elephant('Toto', 56, ['hiking'])

Toto.trumpet();
Toto.addTrick('playing baseball');
Toto.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

function paradeHelper(eleph) {
    console.log(`${eleph.name} is trotting by!`)
}

//one-line
herd.forEach(el => paradeHelper(el));

//also works
herd.forEach(function(el) {
    paradeHelper(el);
})

//Diner Breakfast

function dinerBreakfast(food) {
    const foods = ['grits']
    console.log(`I would like: ${foods.join()}, please`)
    return function (food) {
        foods.concat[food];
        debugger
        console.log(`I would like: ${foods.join()}, please`)
    }
}

let bfastOrder = dinerBreakfast();
bfastOrder("cheese");
bfastOrder("beer");
