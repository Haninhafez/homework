void main()
{
  List<int> prices= [1,2];
 int max=maxProfit(prices);
 print(max);

}
 int maxProfit(List<int> prices) {
  int maxProfit=0;
  int minProfit=prices.first;

 for(int i=0;i<prices.length;i++) 
 {
 
    if(minProfit>prices[i]){
      minProfit=prices[i];
    }
    else if(prices[i]-minProfit> maxProfit)
    {
      maxProfit =prices[i]-minProfit;
    }

  }
  return maxProfit;
 }
