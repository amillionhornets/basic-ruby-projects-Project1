

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
      highestBuyIndex = profit > maxProfit && i > 0 ? i : highestBuyIndex
      lowestBuyIndex = profit > maxProfit ? lowestBuyIndexCurr : lowestBuyIndex
      maxProfit = profit > maxProfit ? profit : maxProfit # if profit is greater set maxProfit the greater profit
    end
  end
  puts "Day prices"
  print(prices)
  puts "\n"
  puts "max profit is $#{maxProfit} so you should buy and sell on these days [#{lowestBuyIndex+1},#{highestBuyIndex+1}]"
end
