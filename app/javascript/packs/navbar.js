var john = {
  fullName:'John Mcclain',
  mass: 85,
  height: 1.75,
calcBmi: function() {
  this.bmi=(this.mass/(this.height*this.height));

  }
};


var mark = {
  fullName:'Mark Cohen',
  mass: 62,
  height: 1.65
  calcBmi: function(){
  this.bmi=(this.mass/(this.height*this.height));

  }
};

if {
  mark.bmi > john.bmi {
    console.log('the winner is '+ mark.fullName);
  }
  else {
    console.log('the winner is '+ john.fullName);
  }
}
