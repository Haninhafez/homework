void main()
{
  NumberCheck num=NumberCheck(5);
  print("Is Even number ? ${num.isEven()}");
}
class NumberCheck
{
  int value;
  NumberCheck(this.value);
  bool isEven()
  {
    return value %2==0;
  }
}