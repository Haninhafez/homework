
void main()
{List <int> nums=[1,2,3,1];
print(containsDuplicate(nums));

}
bool containsDuplicate(List<int> nums) {
 Map <dynamic,int> Storage={};
 for(var i in nums)
 {
  if(Storage.containsKey(i))
  {
    Storage[i]=Storage[i]!+1;
  }
  else 
  {
    Storage[i]=1;
  }
 }
 bool isContainsDuplicates=false;
 print(Storage);

 Storage.forEach(
(key , value){
  if(value>1)
  {
    isContainsDuplicates=true;
  }
}
 );
return (isContainsDuplicates);
    
  }