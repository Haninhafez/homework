void main()
{
  Temperature today =Temperature(32.4);
  print("Celsius : ${today.celsius} Fahrenhite : ${today.toFahrenheit()}");
}
class Temperature
{
  double celsius;
  Temperature(this.celsius);
  double toFahrenheit()
  {
    return (celsius*9/5)+32;
  }
}