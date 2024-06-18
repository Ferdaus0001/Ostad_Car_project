/// this is my fast project in ostad
//project_naem_Car_Information_adn_Car_brand_model_and_Car_Year_adn_milesDriven
class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;


  Car({
    required this.brand,
    required this.model,
    required this.year,
    this.milesDriven = 0,
  }) {
    numberOfCars++;
  }

  // Method to add miles driven
  void drive(double miles) {
    if (miles > 0) {
      milesDriven += miles;
    } else {
      print('Miles driven cannot be negative.');
    }
  }

  // Getter methods
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
    return DateTime.now().year - year;
  }
}

void main() {
  // Creating three Car objects with different brands, models, and years
  Car car1 = Car(brand: 'Toyota', model: 'Corolla', year: 2015);
  Car car2 = Car(brand: 'Honda', model: 'Civic', year: 2018);
  Car car3 = Car(brand: 'Ford', model: 'Mustang', year: 2020);

  // Driving each car a different number of miles
  car1.drive(5000);
  car2.drive(10000);
  car3.drive(15000);

  // Printing out the details of each car
  print('Car 1:');
  print('Brand: ${car1.getBrand()}');
  print('Model: ${car1.getModel()}');
  print('Year: ${car1.getYear()}');
  print('Miles Driven: ${car1.getMilesDriven()}');
  print('Age: ${car1.getAge()} years');
  print('');

  print('Car 2:');
  print('Brand: ${car2.getBrand()}');
  print('Model: ${car2.getModel()}');
  print('Year: ${car2.getYear()}');
  print('Miles Driven: ${car2.getMilesDriven()}');
  print('Age: ${car2.getAge()} years');
  print('');

  print('Car 3:');
  print('Brand: ${car3.getBrand()}');
  print('Model: ${car3.getModel()}');
  print('Year: ${car3.getYear()}');
  print('Miles Driven: ${car3.getMilesDriven()}');
  print('Age: ${car3.getAge()} years');
  print('');

  // Printing out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}
