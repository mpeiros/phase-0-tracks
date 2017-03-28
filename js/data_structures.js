var colors = ['blue', 'green', 'red', 'yellow'];
var horses = ['Ed', 'Strawberry', 'Buttercup', 'Lightning'];

colors.push('orange');
horses.push('Frank');

if (colors.length === horses.length) {
  horsesAndColors = {}

  for (var i = 0; i < horses.length; i++) {
    horsesAndColors[horses[i]] = colors[i];
  }

  console.log(horsesAndColors);
}

function Car(make, model, year, color) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;

  this.startUp = function() {
    console.log('Vroooom Vroooom!!');
  };
}


var car1 = new Car('Ford', 'Focus', 2010, 'blue');
car1.startUp();

var car2= new Car('Toyota', 'Prius', 2009, 'gray');
car2.startUp();

var car3 = new Car('Lexus', 'R450', 2012, 'black');
car3.startUp();
