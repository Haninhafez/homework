void main()
{
 course course1=course();
 course1.title="Programming Basics";
 course course2=course();
 course2.title="Flutter";
 course2.duration=4;

 print("Course 1 : ${course1.title} -> ${course1.duration}");
  print("Course 2 : ${course2.title} -> ${course2.duration}");
}

class course 
{
  String ?title;
  double duration=3;
  
}