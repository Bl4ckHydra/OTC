// Sample RSI-based Indicator
input int period = 14; // RSI period
double rsiValue;

int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
   rsiValue = iRSI(NULL, 0, period, PRICE_CLOSE, 0);
   if(rsiValue > 70) {
      // Overbought - sell signal
      Alert("Sell Signal - RSI Overbought");
   }
   else if(rsiValue < 30) {
      // Oversold - buy signal
      Alert("Buy Signal - RSI Oversold");
   }
   return rates_total;
}

