import 'dart:io';
import 'Car.dart';

class Sale extends Car {
  String customerName = "";
  String address = "";
  int contactInfo = 0;

  Sale(String _CarName, int _Model, String _Steering, int _CarPrice,
      String _Made, String _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  void getCustomerDetails() {
    stdout.write("Enter Your Name: ");
    customerName = stdin.readLineSync()!;
    stdout.write("Enter Your Address: ");
    address = stdin.readLineSync()!;
    stdout.write("Enter Your Contact Number: ");
    contactInfo = int.parse(stdin.readLineSync()!);
  }

  @override
  void info() {
    print("Customer Name: $customerName");
    print("Customer Address: $address");
    print("Contact No: $contactInfo");
    super.info();
  }
}
