import 'dart:io';

void main()
{
  print("Enter a number : ");
 double number=double.parse(stdin.readLineSync()!);
  double num=0;
  while(num<10)
  {
   
    num+=(number%10);
    number=number/10;

  }
  print("Sum :$num ");
}