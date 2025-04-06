abstract class Vehicle {
  int _speed = 0;

  void move();

  void setSpeed(int speed) {
    _speed = speed;
  }

  int get speed => _speed;
}

class Car extends Vehicle {
  void move() {
    print('The car is moving at ${speed} km/h');
  }
}

void main() {
  Car myCar = Car();
  myCar.setSpeed(89);
  myCar.move();
}
