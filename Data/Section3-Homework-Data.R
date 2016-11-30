#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# Profit for each months

profit <- c(revenue - expenses)
profit

# Calculate Tax as 30% round of Profit the revenue To 2 decimal numbers

Tax <- round(profit * 0.3 , 2)
Tax

# Calculate the net Profit
Net_Profit <- profit - Tax
Net_Profit

# Profit Margin for each month equals to profit after tax devided by revenue
profit_Margin <- round((Net_Profit / revenue) * 100 ,2 )
profit_Margin

# Mean Profit margin after the tax 
mean_pat <- mean(Net_Profit)
mean_pat

good_month <- Net_Profit > mean_pat
good_month

Bad_month <- Net_Profit < mean_pat
Bad_month

greatest_month <- Net_Profit == max(Net_Profit)
greatest_month

worst_month <- Net_Profit == min(Net_Profit)
worst_month
revenue.1000 <- round(revenue/1000 , 0)
expenses.1000 <- round(expenses/1000 , 0)
profit.1000 <- round(profit/1000, 0)
Tax.1000 <- round(Tax/1000 , 0)
Net_Profit.1000 <- round(Net_Profit/1000 , 0 )
profit_Margin
mean_pat
good_month
Bad_month
greatest_month


revenue.1000 
expenses.1000
profit.1000 
Tax.1000 
Net_Profit.1000 
profit_Margin
mean_pat
good_month
Bad_month
greatest_month

M <- rbind( 
  revenue.1000 ,
  expenses.1000,
  profit.1000 ,
  Tax.1000 ,
  Net_Profit.1000, 
  profit_Margin,
  mean_pat,
  good_month,
  Bad_month,
  greatest_month,
  worst_month
      )
M

MyVector <- c(12, 456, 34.5, 23, 55, "34hello")
MyVector
typeof(MyVector)
