import 'dart:io';

import 'Car.dart';

class Rent extends Car {
  late String CustomerName;
  late String Address;
  late int Contactinfo;
  late int RentPerDay = 0;
  late int time = 0;

  Rent(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission)
      : super(_CarName, _Model, _Steering, _CarPrice, _Made, _Transmission);

  Customer() {
    stdout.write("Enter UR Name : ");
    this.CustomerName = stdin.readLineSync()!;
    stdout.write("Enter ur Address : ");
    this.Address = stdin.readLineSync()!;
    stdout.write("Enter ur contact Number : ");
    this.Contactinfo = int.parse(stdin.readLineSync()!);
    stdout.write("Enter amount of  Rent per day : ");
    this.RentPerDay = int.parse(stdin.readLineSync()!);
    stdout.write("Enter a time car rented for  : ");
    this.time = int.parse(stdin.readLineSync()!);
  }

  Rentcharges() {
    return this.RentPerDay * this.time;
  }

  @override
  info() {
    print("Customer Name : $CustomerName");
    print("Customer Address : $Address");
    print("Contact No : $Contactinfo");
    super.info();
    print("Rent per Day : Rs $RentPerDay");
    print("Car Rented for  : $time Days");
    print("Total Charges : Rs $Rentcharges()");
  }
}
