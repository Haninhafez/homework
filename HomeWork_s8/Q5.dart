import 'dart:io';

void main()
{
  List <int> listUser=[];
  print("Enter 6 numbers :");
  int num;
  for( int i=1;i<=6;i++)
  {
    print("Num$i :");
    num=int.parse(stdin.readLineSync()!);
    listUser.add(num);
  }
  int largest =listUser[0];
  int secondLargest =listUser[0];

  for (int num in listUser) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }
  print("Largest number $largest");
  print("Second largest number $secondLargest");
  }
