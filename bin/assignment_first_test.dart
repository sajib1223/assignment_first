import 'dart:core';

class Car {

  String brand;
  String model;
  int year;
  double milesDriven;


  static int numberOfCars = 0;


  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Methods
  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {

  Car car1 = Car('Toyota', 'Camry', 2015, 50000.0);
  Car car2 = Car('Honda', 'Civic', 2018, 30000.0);
  Car car3 = Car('Ford', 'Mustang', 2020, 15000.0);


  car1.drive(150.0);
  car2.drive(200.0);
  car3.drive(100.0);


  print('Car 1: ${car1.getBrand()} ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');


  print('Total number of cars created: ${Car.numberOfCars}');
}
