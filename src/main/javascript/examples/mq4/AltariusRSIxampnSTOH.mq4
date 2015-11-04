//+------------------------------------------------------------------+
//|                                                                  |
//|                      Copyright � 2005, MetaQuotes Software Corp. |
//|                                       http://www.metaquotes.net/ |
//+------------------------------------------------------------------+

extern double Lots               = 0.1;
extern double MaximumRisk        = 0.1;
extern double DecreaseFactor     = 3;
extern double PeriodRSI          = 4;
double  st1,st2;
//+------------------------------------------------------------------+
//| Calculate open positions                                         |
//+------------------------------------------------------------------+
int CalculateCurrentOrders(string symbol)
  {
   int buys=0,sells=0;
//----
   for(int i=0;i<OrdersTotal();i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_TRADES)==false) break;
      if(OrderSymbol()==Symbol())
        {
         if(OrderType()==OP_BUY)  buys++;
         if(OrderType()==OP_SELL) sells++;
        }
     }
//---- return orders volume
   if(buys>0) return(buys);
   else       return(-sells);
  }
//+------------------------------------------------------------------+
//| Calculate optimal lot size                                       |
//+------------------------------------------------------------------+
double LotsOptimized()
  {
   double lot=Lots;
   int    orders=HistoryTotal();     // history orders total
   int    losses=0;                  // number of losses orders without a break
//---- select lot size
   lot=NormalizeDouble(AccountFreeMargin()*MaximumRisk/1000.0,2);
//---- calcuulate number of losses orders without a break
   if(DecreaseFactor>0)
     {
      for(int i=orders-1;i>=0;i--)
        {
         if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)==false) { Print("Error in history!"); break; }
         if(OrderSymbol()!=Symbol() || OrderType()>OP_SELL) continue;
         //----
         if(OrderProfit()>0) break;
         if(OrderProfit()<0) losses++;
        }
      if(losses>1) lot=NormalizeDouble(lot-lot*losses/DecreaseFactor,1);
     }
//---- return lot size
   if(lot<0.1) lot=0.1;
   return(lot);
  }
//+------------------------------------------------------------------+
//| Check for open order conditions                                  |
//+------------------------------------------------------------------+
void CheckForOpen()
  {
  int res;
 if(Volume[0]>1) return;
//---- �������� -----------------------
  
  if (iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_MAIN,0)>iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)&& iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_MAIN,0)<50)
    if (MathAbs(iStochastic(NULL,0,10,3,3,MODE_SMA,0,MODE_MAIN,0)-iStochastic(NULL,0,10,3,3,MODE_SMA,0,MODE_SIGNAL,0))>5)
  //  if (iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_MAIN,1)==iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,1))
     {
      res=OrderSend(Symbol(),OP_BUY,LotsOptimized(),Ask,3,0,0,"",0,0,Blue);
      return;
     }
//---- ������� ------------------------
if (iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_MAIN,0)<iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)&&iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_MAIN,0)>55)
    if (MathAbs(iStochastic(NULL,0,10,3,3,MODE_SMA,0,MODE_MAIN,0)-iStochastic(NULL,0,10,3,3,MODE_SMA,0,MODE_SIGNAL,0))>5)
     {
      res=OrderSend(Symbol(),OP_SELL,LotsOptimized(),Bid,3,0,0,"",0,0,Red);
      return;
     }
     
  }
//------------�������� �������----------------------------------------
void CheckForClose2()
{
 if(OrderType()==OP_BUY)  OrderClose(OrderTicket(),OrderLots(),Bid,3,White);
 if(OrderType()==OP_SELL) OrderClose(OrderTicket(),OrderLots(),Ask,3,Blue);
//CheckForOpen();
}  

//
//+------------------------------------------------------------------+
//| Check for close order conditions                                 |
//+------------------------------------------------------------------+
void CheckForClose1()
  {
   if(Volume[0]>1) return;
//�������� �� ��������   
if ((AccountProfit()<0)&&(MathAbs(AccountProfit())>=(AccountMargin()*MaximumRisk))) 
   { 
   CheckForClose2();
   Print(" ������", AccountProfit());
   }/**/
      //---- check order type 
      if(OrderType()==OP_BUY)
        {
         if ((iRSI(NULL,0,3,PRICE_MEDIAN,0)>60)&&(iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)<iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,1)))
         if (iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)>70)
         CheckForClose2();  
        }
      if(OrderType()==OP_SELL)
        {
         if ((iRSI(NULL,0,3,PRICE_MEDIAN,0)<40)&&(iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)>iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,1)))
          if (iStochastic(NULL,0,15,8,8,MODE_SMA,0,MODE_SIGNAL,0)<30)
          CheckForClose2();
        }

  }
  
//+------------------------------------------------------------------+
//| Start function                                                   |
//+------------------------------------------------------------------+

void start()
{
//---- check for history and trading
   if (Bars<100 || IsTradeAllowed()==false) return;
//---- calculate open orders by current symbol
   if(CalculateCurrentOrders(Symbol())==0) CheckForOpen();
   else                                    CheckForClose1();
//----
  }
//+------------------------------------------------------------------+