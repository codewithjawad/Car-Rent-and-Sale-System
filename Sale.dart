import 'dart:io';

import 'Car.dart';

class Sale extends Car {
  late String CustomerName;
  late String Address;
  late int Contactinfo;

  Sale(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  Customer() {
    stdout.write("Enter UR Name : ");
    this.CustomerName = stdin.readLineSync()!;
    stdout.write("Enter ur Address : ");
    this.Address = stdin.readLineSync()!;
    stdout.write("Enter ur contact Number : ");
    this.Contactinfo = int.parse(stdin.readLineSync()!);
  }

  @override
  info() {
    print("Customer Name : $CustomerName");
    print("Customer Address : $Address");
    print("Contact No : $Contactinfo");
    super.info();
  }
}
