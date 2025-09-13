void main()
{
List<Movie> myWatchList=[
  Movie("Me befor u", 10),
  Movie("Batman", 9),
  Movie("Cloud", 7),
  Movie("Hunger Games", 5)
];
for(var i in myWatchList)
{
  if(i.rating>7)
  {
    print(i.title);
  }
}
}
class Movie 
{
  String title;
  double rating;
  Movie(this.title,this.rating);
}