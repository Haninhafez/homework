void main()
{
  Car myFirstCar=Car("MG", 2015);
  Car myScecondCar=Car("BMW", 2025);
  myFirstCar.printDetails();
  myScecondCar.printDetails();

}

class Car{
  String brand;
  int year;
  Car(this.brand,this.year);
  void printDetails()
  {
    print("Brand : $brand  in Year $year");
  }
}