import 'dart:io';

void main()
{
print("Enter a sentece");
String sentece=stdin.readLineSync()!;
List listOFWord=sentece.split(' ');
Map<String,int> storage={};
for(var i in listOFWord)
{
  if(storage.containsKey(i))
  {
    storage[i]=storage[i]!+1;
  }
  else 
  {
    storage[i]=1;
  }
}
storage.forEach((key,value){
  if(value==1)
  {
    print(key);
  }
});
}
