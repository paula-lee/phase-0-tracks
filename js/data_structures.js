// var colors = ["red", "yellow", "turquoise", "sparkle"];
// var horses = ["Seabiscuit", "Secretariat", "Bojack", "Shadowfax"];

// colors.push("cerulean");
// horses.push("American Pharoah");

// console.log(colors);
// console.log(horses);

// var horseObject = {};

// for (var i = 0; i < colors.length; i++) {
//  horseObject[horses[i]] = colors[i];
// }

// console.log(horseObject);

function Car(make, model, shade) {
 this.make = make;
 this.model = model;
 this.shade = shade;

 this.startEngine = function() { console.log("Vroom! Vroom!"); };

 console.log("Your car is ready to roll!");
 console.log("Enjoy your new " + this.make + " " + this.model + "!");
}

var car1 = new Car("Audi", "S5", "red");
car1.startEngine();
var car2 = new Car("Honda", "Civic", "black");
car2.startEngine();
var car3 = new Car("Maserati", "Ghibli", "green");
car3.startEngine();