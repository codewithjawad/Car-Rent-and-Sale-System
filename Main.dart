import 'dart:io';

import 'Car.dart';
import 'Admin.dart';
import 'Sale.dart';
import 'Rent.dart';

void main(List<String> args) {
  List<Car> cars = [
    Car("GRANDE", 2020, "MANUAL", 15000, "TOYOTA", "Power"),
    Car("DAYZ", 2018, "Auto", 15000, "NISSAN", "Power"),
    Car("WAGON-R", 2021, "Auto", 10000, "SUZUKI", "Power"),
    Car("CIVIC", 2024, "Auto", 20000, "HONDA", "Power")
  ];

  Admin admin = Admin("GRANDE", 2020, "MANUAL", 15000, "TOYOTA", "Power");

  print("Welcome to Car Rent and Sale System!");
  stdout.write("Select any one option : \n");
  print("1) Admin");
  print("2) User");
  print("3) Exit");
  stdout.write("Enter Here: ");
  int reply = int.parse(stdin.readLineSync()!);

  if (reply == 1) {
    admin.login();
    for (int i = 0; i < cars.length; i++) {
      print("Car ${i + 1}");
      cars[i].info();
      print("");
    }
    stdout.write(
        "Select any car in which you want to make changes (1-${cars.length}): ");
    int ans = int.parse(stdin.readLineSync()!);
    if (ans > 0 && ans <= cars.length) {
      admin.update();
    } else {
      print("Invalid option");
    }
  } else if (reply == 2) {
    print("Select Service Type :");
    print("1) Rent A Car");
    print("2) Purchase a Car");
    stdout.write("Enter Here: ");
    int serviceType = int.parse(stdin.readLineSync()!);

    switch (serviceType) {
      case 1:
        print("\n\n");
        for (int i = 0; i < cars.length; i++) {
          print("Car ${i + 1}");
          cars[i].info();
          print("");
        }
        stdout.write("Select any car from the list (1-${cars.length}): ");
        int ans = int.parse(stdin.readLineSync()!);
        if (ans > 0 && ans <= cars.length) {
          Rent rentCar = Rent(
              cars[ans - 1].CarName,
              cars[ans - 1].Model,
              cars[ans - 1].Steering,
              cars[ans - 1].CarPrice,
              cars[ans - 1].Made,
              cars[ans - 1].Transmission);
          rentCar.getCustomerDetails();
          print("\n\n~~~~~Receipt~~~~~\n\n");
          rentCar.info();
        } else {
          print("Invalid option");
        }
        break;

      case 2:
        print("\n\n");
        for (int i = 0; i < cars.length; i++) {
          print("Car ${i + 1}");
          cars[i].info();
          print("");
        }
        stdout.write("Select any car from the list (1-${cars.length}): ");
        int ans = int.parse(stdin.readLineSync()!);
        if (ans > 0 && ans <= cars.length) {
          Sale saleCar = Sale(
              cars[ans - 1].CarName,
              cars[ans - 1].Model,
              cars[ans - 1].Steering,
              cars[ans - 1].CarPrice,
              cars[ans - 1].Made,
              cars[ans - 1].Transmission);
          saleCar.getCustomerDetails();
          print("\n\n~~~~~Receipt~~~~~\n\n");
          saleCar.info();
        } else {
          print("Invalid option");
        }
        break;

      default:
        print("Invalid option");
    }
  } else if (reply == 3) {
    print("Exiting the system. Goodbye!");
  } else {
    print("Invalid option. Please try again.");
  }
}
