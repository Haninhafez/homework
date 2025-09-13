void main()
{
Employee employee1=Employee("Mohamed", 15000);
employee1.giveRaise(5000);
print("Salary :${employee1.Salary}");
}
class Employee
{
  String name;
  int Salary;
  Employee(this.name,this.Salary);
  void giveRaise(int amount)
  {
    Salary+=amount;
  }
}