
# Normally you solve this problem with nested for loops that point at a min and a max
#  but I wanted to try and solve it with only one for loop
def stock_picker(prices)
  highestBuyIndex = 0
  lowestBuy = prices[0]
  lowestBuyIndex = 0
  lowestBuyIndexCurr = 0
  maxProfit = 0
  for i in 0..prices.length - 1 do
    if (prices[i] < lowestBuy)
      lowestBuy = prices[i]
      lowestBuyIndexCurr = i
    else
      profit = prices[i] - lowestBuy
      highestBuyIndex = profit > maxProfit && i > 0 ? i : highestBuyIndex # Track the highest day index
      lowestBuyIndex = profit > maxProfit ? lowestBuyIndexCurr : lowestBuyIndex # Track the lowest day index
      maxProfit = profit > maxProfit ? profit : maxProfit # if profit is greater set maxProfit the greater profit
    end
  end
  puts "Day prices"
  print(prices)
  puts "\n"
  puts "max profit is $#{maxProfit} so you should buy and sell on these days [#{lowestBuyIndex+1},#{highestBuyIndex+1}]"
end
