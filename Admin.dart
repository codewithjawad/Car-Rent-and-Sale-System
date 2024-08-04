import 'dart:io';

import 'Car.dart';

class Admin extends Car {
  String username = "Admin";
  String password = "12345";
  String userEnteredName = "";
  String userEnteredPassword = "";

  Admin(String _CarName, int _Model, String _Steering, int _CarPrice,
      String _Made, String _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  void login() {
    print("\n\n~~~~~Login Page~~~~~\n\n");
    bool loggedIn = false;

    while (!loggedIn) {
      print("Enter UserName :");
      userEnteredName = stdin.readLineSync()!;
      if (userEnteredName == username) {
        print("Enter Password :");
        userEnteredPassword = stdin.readLineSync()!;
        if (userEnteredPassword == password) {
          print("\nLogged In Successfully\n");
          loggedIn = true;
        } else {
          print("Invalid Password. Please try again.\n");
        }
      } else {
        print("Invalid Username. Please try again.\n");
      }
    }
  }

  void update() {
    print(
        "\nWhat changes do you want to make for this Rent A Car (Select from the following list)\n");
    print("1) MADE By");
    print("2) CAR NAME");
    print("3) MODEL");
    print("4) TRANSMISSION");
    print("5) STEERING TYPE");
    print("6) Car Price");

    int reply = int.parse(stdin.readLineSync()!);
    switch (reply) {
      case 1:
        print("Enter new Made By:");
        super.Made = stdin.readLineSync()!;
        break;
      case 2:
        print("Enter new Car Name:");
        super.CarName = stdin.readLineSync()!;
        break;
      case 3:
        print("Enter new Model Year:");
        super.Model = int.parse(stdin.readLineSync()!);
        break;
      case 4:
        print("Enter new Transmission Type:");
        super.Transmission = stdin.readLineSync()!;
        break;
      case 5:
        print("Enter new Steering Type:");
        super.Steering = stdin.readLineSync()!;
        break;
      case 6:
        print("Enter new Car Price:");
        super.CarPrice = int.parse(stdin.readLineSync()!);
        break;
      default:
        print("Invalid Option");
        return;
    }
    print("Updated Car Info:");
    super.info();
  }
}
