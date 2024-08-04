class Car {
  late String CarName;
  late String Model;
  late String Steering;
  late int CarPrice;
  late String Made;
  late String Transmission;

  Car(this.CarName, this.Model, this.Steering, this.CarPrice, this.Made,
      this.Transmission);

  info() {
    print("Made by : $Made");
    print("CarName : $CarName");
    print("Model   : $Model");
    print("Transmission : $Transmission");
    print("Steering Type: $Steering");
    print("Car Price : Rs $CarPrice");
  }
}
