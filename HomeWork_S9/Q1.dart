void main()
{
  city mycity=city("Tanta", 30540000);
  city city2=city("Alex",640455420);
  print("City name: ${mycity.name} Population :${mycity.population}");
    print("City name: ${city2.name} Population :${city2.population}");

}
class city{
  String name;
  int population;
  city(this.name,this.population);
}