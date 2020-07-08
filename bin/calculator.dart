import 'dart:io';

class Calculator{
  var number1;
  var number2;
  var operator;

  double sum(double number1 , double number2) {
      return number1 + number2;
  }
  double subtract(double number1, double number2) {
      return number1-number2;
  }
  double multiply(double number1, double number2) {
      return number1*number2;
  }
  double divide(double number1, double number2) {
    /*if (number2 == 0) {
      print("divide by zero error please enter another number");
    }*/
    return number1/number2;
  }
  void calculator() {
    number1 = null;
    number2 = null;
    operator = null;

    print("Welcome\nPlease enter first number");
    number1 =double.parse(stdin.readLineSync()) ;
    
    print("please enter second number");
    number2 = double.parse(stdin.readLineSync());
    
    print("Please choose the operation you want \n+ for sum \n- for substract \n* for multiply \n/ for divide \ne to exit the program");
    operator = stdin.readLineSync();

    switch(operator) {
      case "+":
        print(sum(number1, number2));
        calculator();
        break;
      case "-":
        print(subtract(number1, number2));
        calculator();
        break;
      case "*":
        print(multiply(number1, number2));
        calculator();
        break;
      case "/":
        print(divide(number1, number2));
        calculator();
        break;
      case "e":
        exit(0);
        break;
      default:
        print("Input not recognized");
        operator();
        break;
    }
  }
}