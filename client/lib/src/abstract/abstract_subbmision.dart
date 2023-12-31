// void main(List<String> args) {
//   Circle circle = Circle(10.2);
//   print(circle.circulateArea());

//   Car car = Car(195.0, 65.0);
//   print('whushhh: ${car.speed}');
//   car.decrement();
// }

// 1 .  Abstract Class untuk Bentuk Geometri:

// Tipe Variabel:
// Abstract class: Shape
// Class turunan: Circle, Rectangle
// Variabel:
// Pada Circle: radius (double)
// Pada Rectangle: length (double), width (double)
// Logika:
// Abstract method calculateArea() untuk menghitung luas masing-masing bentuk.
// Implementasi rumus luas di class turunan.
// Syarat:
// Subclass harus mengimplementasikan calculateArea().

import 'dart:math';

abstract class Shape {
  double circulateArea();
}

class Circle extends Shape {
  double radius;

  Circle(
    this.radius,
  );
  @override
  double circulateArea() {
    return 3.14 * radius * radius;
  }
}

// 2. Penggunaan Abstract Getter dan Setter:

// Tipe Variabel:
// Abstract class: Vehicle
// Class turunan: Car, Motorcycle
// Variabel:
// Abstract getter dan setter untuk speed (double).
// Logika:
// Abstract getter dan setter untuk mengakses dan mengatur kecepatan.
// Implementasi di class turunan.
// Syarat:
// Subclass harus mengimplementasikan getter dan setter.

abstract class Vehicle {
  double get speed;
  set speed(double value);
  void decrement();
}

class Car extends Vehicle {
  double _s;
  double _t;
  double decrements = 1.0;

  Car(this._s, this._t);

  @override
  double get speed => _s / _t;

  @override
  set speed(double value) {
    _s = value;
  }

  @override
  void decrement() async {
    for (; decrements < _s / _t; decrements += 1.0) {
      await Future.delayed(Duration(seconds: 1));
      print(_s / _t - decrements);
    }
  }
}

// 3. Abstract Method untuk Koneksi Database:

// Tipe Variabel:
// Abstract class: DatabaseConnection
// Class turunan: MySQLConnection, MongoDBConnection
// Variabel:
// host (String)
// username (String)
// password (String)
// Logika:
// Abstract methods connect() dan disconnect() untuk mengelola koneksi ke database.
// Implementasi di class turunan.
// Syarat:
// Subclass harus mengimplementasikan connect() dan disconnect().

// 4. Abstract Class dalam Permainan:

// Tipe Variabel:
// Abstract class: GameCharacter
// Class turunan: Warrior, Mage
// Variabel:
// health (int)
// damage (int)
// position (Point, jika Point adalah kelas yang ada di Dart untuk merepresentasikan koordinat)
// Logika:
// Abstract methods move() dan attack() untuk mengatur perilaku karakter dalam permainan.
// Implementasi di class turunan.
// Syarat:
// Subclass harus mengimplementasikan move() dan attack().

void main() {
  Warior warior = Warior(
      charachter: 'rifky',
      health: 100,
      ismove: true,
      hitEnemy: true,
      step: 300,
      damage: 10280.0);

  warior.attack();
  warior.move(0);
}

abstract class GameCharachter {
  void move(int jarak);
  void attack();
}

class Warior extends GameCharachter {
  String charachter;
  double health;
  bool? ismove;
  bool? hitEnemy;
  int step;
  double damage;
  Warior(
      {required this.charachter,
      required this.step,
      required this.damage,
      this.ismove,
      this.hitEnemy,
      required this.health});
  @override
  void move(int jarak) {
    while (jarak < step) {
      Future.delayed(Duration(milliseconds: 600), () {
          jarak += 100;
      });
    }
    print('charachter : $charachter , berlari sejauh : $jarak KM');
  }

  @override
  void attack() {
    Random randomAtck = Random();
    var damageNow = damage.toInt() * randomAtck.nextInt(120) * 102;
    if (ismove! && hitEnemy!) {
      print(
          'charachter name : $charachter , health : ${health.toInt()} , total damage : $damageNow');
    } else {
      print('uknown');
    }
  }
}





// 5. Penggunaan Abstract Class dalam Sistem Pembayaran:

// Tipe Variabel:
// Abstract class: PaymentMethod
// Class turunan: CreditCardPayment, PayPalPayment
// Variabel:
// amount (double)
// recipient (String)
// Logika:
// Abstract method processPayment() untuk menangani pembayaran.
// Implementasi di class turunan.
// Syarat:
// Subclass harus mengimplementasikan processPayment().