abstract class Vehicle {
  int _speed = 0;

   move();

   setSpeed(int speed) {
    _speed = speed;
  }

  int get speed => _speed;
}

class Car extends Vehicle {
   move() {
    print('The car is moving at $speed km/h');
  }
}

 main() {
  Car myCar = Car();
  myCar.setSpeed(867);
  myCar.move();
}
