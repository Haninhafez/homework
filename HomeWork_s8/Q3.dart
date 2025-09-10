class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printDetails() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person person1 = Person('Alice', 25);
  person1.printDetails(); 

  person1.age = 30; 
  person1.printDetails(); 
}