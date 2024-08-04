import 'dart:io';

import 'Car.dart';

class Admin extends Car {
  String username = "Admin";
  String password = "12345";
  late String UserEnteredName;
  late String UserEnteredpassword;
  Admin(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  login() {
    print("\n\n~~~~~Login Page~~~~~\n\n");
    while (username != UserEnteredName && password != UserEnteredpassword) {
      if (username == UserEnteredName && password == UserEnteredpassword) {
        print("Loginsuccessfully!");
      } else {
        print("Invalid Credentials");
      }
    }
  }

  update() {
    print(
        "\nWhat changes do you want to make for this Rent A Car (Select from following list)\n");
    print("1)MADE By");
    print("2)CAR NAME");
    print("3)MODEL");
    print("4)TRANSMISSION");
    print("5)STEERING TYPE");
    print("6)Car Price");
    int reply = int.parse(stdin.readLineSync()!);
    switch (reply) {
      case 1:
        super.Made = stdin.readLineSync()!;
        super.info();
        break;
      case 2:
        super.CarName = stdin.readLineSync()!;
        super.info();
        break;
      case 3:
        super.Model = stdin.readLineSync()!;
        super.info();
        break;
      case 4:
        super.Transmission = stdin.readLineSync()!;
        super.info();
        break;
      case 5:
        super.Steering = stdin.readLineSync()!;
        super.info();
        break;
      case 6:
        super.CarPrice = int.parse(stdin.readLineSync()!);
        super.info();
        break;
      default:
        print("Invalid Option");
    }
  }
}
