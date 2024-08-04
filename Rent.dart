import 'dart:io';
import 'Car.dart';

class Rent extends Car {
  String customerName = "";
  String address = "";
  int contactInfo = 0;
  int rentPerDay = 0;
  int time = 0;

  Rent(String _CarName, int _Model, String _Steering, int _CarPrice,
      String _Made, String _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  void getCustomerDetails() {
    stdout.write("Enter Your Name: ");
    customerName = stdin.readLineSync()!;
    stdout.write("Enter Your Address: ");
    address = stdin.readLineSync()!;
    stdout.write("Enter Your Contact Number: ");
    contactInfo = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Rent per Day: ");
    rentPerDay = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Number of Days Car is Rented for: ");
    time = int.parse(stdin.readLineSync()!);
  }

  int calculateRentCharges() {
    return rentPerDay * time;
  }

  @override
  void info() {
    print("Customer Name: $customerName");
    print("Customer Address: $address");
    print("Contact No: $contactInfo");
    super.info();
    print("Rent per Day: Rs $rentPerDay");
    print("Car Rented for: $time Days");
    print("Total Charges: Rs ${calculateRentCharges()}");
  }
}
