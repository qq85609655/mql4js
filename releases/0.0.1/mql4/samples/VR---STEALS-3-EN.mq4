// + ----------------------------------------------- -------------------਀⼀⼀ 簀 嘀刀 ⴀⴀⴀ 匀吀䔀䄀䰀匀ⴀ㌀⸀洀焀㐀 簀 
// | "Copyright 2014 , www.trading-go.ru Project." |਀⼀⼀ 簀 ∀䠀琀琀瀀㨀⼀⼀眀眀眀⸀琀爀愀搀椀渀最ⴀ最漀⸀爀甀∀ 簀 
// + ----------------------------------------------- -------------------਀⌀瀀爀漀瀀攀爀琀礀 挀漀瀀礀爀椀最栀琀 ∀䌀漀瀀礀爀椀最栀琀 ㈀　㄀㐀 Ⰰ 眀眀眀⸀琀爀愀搀椀渀最ⴀ最漀⸀爀甀 倀爀漀樀攀挀琀⸀∀ 
#property link "http://www.trading-go.ru"਀⌀瀀爀漀瀀攀爀琀礀 搀攀猀挀爀椀瀀琀椀漀渀 ∀ 䤀渀瘀椀猀椀戀氀攀 䌀漀甀渀猀攀氀漀爀 Ⰰ 愀氀氀漀眀猀 琀漀 瀀甀琀 渀漀琀 瘀椀猀椀戀氀攀∀ 
#property description "StopLoss, TakeProfit, Breakeven, Traling stop, OrderClose, OrderDelete"਀⌀瀀爀漀瀀攀爀琀礀 猀琀爀椀挀琀 
/*਀                  圀䄀刀一䤀一䜀 ℀ 
ADVISOR operate even when the terminal MT4 bild 610 or Up਀ 
Advisor is designed for installation of virtual StopLoss, TakeProfit, Breakeven, Traling stop, OrderClose, OrderDelete਀吀栀椀猀 椀猀 琀栀攀 琀栀椀爀搀 瘀攀爀猀椀漀渀 漀昀 琀栀攀 䄀搀瘀椀猀漀爀 嘀刀 ⴀⴀⴀ 匀吀䔀䄀䰀匀 
The first version builds 509 or below http://codebase.mql4.com/ru/7602਀吀栀攀 猀攀挀漀渀搀 瘀攀爀猀椀漀渀 戀甀椀氀搀猀 㔀　㤀 漀爀 戀攀氀漀眀 栀琀琀瀀㨀⼀⼀挀漀搀攀戀愀猀攀⸀洀焀氀㐀⸀挀漀洀⼀爀甀⼀㠀㜀㤀㘀 
Since writing the first version has been more than three years , this version incorporates many requests਀吀爀愀搀攀爀猀 甀猀椀渀最 攀愀爀氀椀攀爀 瘀攀爀猀椀漀渀猀 漀昀 琀栀攀 愀搀瘀椀猀漀爀⸀ 
Copyright Adviser Voldemar. Skype: Voldemar227਀ 
System requirements:਀䴀吀㐀 戀甀椀氀搀 愀戀漀瘀攀 㘀㄀　 
*/਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Inputs |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// Starting exhibition਀椀渀瀀甀琀 搀漀甀戀氀攀 匀琀愀爀琀䰀漀琀 㴀 　⸀　㄀㬀 
// Start Virtual Take Profit in points਀椀渀瀀甀琀 椀渀琀 吀愀欀攀倀爀漀昀椀琀 㴀 㔀　　 㬀 
// Virtual starter Stop Loss in points਀椀渀瀀甀琀 椀渀琀 匀琀漀瀀䰀漀猀猀 㴀 㔀　　 㬀 
// Start Virtual Trailing Stop in points਀椀渀瀀甀琀 椀渀琀 吀爀愀氀椀渀最匀琀漀瀀 㴀 ㌀　　 㬀 
// Virtual starter breakeven in points਀椀渀瀀甀琀 椀渀琀 䈀爀攀愀欀攀瘀攀渀 㴀 ㌀　　 㬀 
// Append the prefecture of graphic objects਀椀渀瀀甀琀 猀琀爀椀渀最 瀀爀攀昀椀砀 㴀 ∀瘀爀∀㬀 
// Unique number of orders Adviser਀椀渀瀀甀琀 椀渀琀 䴀愀最椀挀 㴀 　 㬀 
// Slippage in points਀椀渀瀀甀琀 椀渀琀 匀氀椀瀀 㴀 ㌀　 㬀 
// Cycle delay for demo or live accounts for weak PC 500 and above for PC moschny 50 and above਀椀渀瀀甀琀 椀渀琀 䴀椀氀匀攀挀 㴀 ㄀　　 㬀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀簀 
// + ----------------------------------------------- -------------------਀猀琀爀椀渀最 椀渀昀漀 嬀崀㬀 ⼀⼀ 䄀爀爀愀礀 昀漀爀 洀攀猀猀愀最攀猀 漀渀 琀栀攀 挀栀愀爀琀 
int Coment = 10; // Number of messages on the chart਀挀漀氀漀爀 挀瘀椀琀 嬀崀㬀 ⼀⼀ 䄀爀爀愀礀 漀昀 挀漀氀漀爀猀 昀漀爀 洀攀猀猀愀最攀猀 漀渀 琀栀攀 挀栀愀爀琀 
int ButX = 17 ; // X coordinate of the buttons Adviser਀椀渀琀 䈀甀礀夀 㴀 ㄀㔀 㬀 ⼀⼀ 夀 挀漀漀爀搀椀渀愀琀攀 漀昀 琀栀攀 戀甀琀琀漀渀猀 䄀搀瘀椀猀攀爀 
int x = 0, // ​​x coordinate of the buttons Adviser਀礀 㴀 　 㬀 ⼀⼀ 夀 挀漀漀爀搀椀渀愀琀攀 漀昀 琀栀攀 戀甀琀琀漀渀猀 䄀搀瘀椀猀攀爀 
double tp = 0, // ​​Variable to take profit਀猀氀 㴀 　Ⰰ ⼀⼀ ଀ଠ嘠愀爀椀愀戀氀攀 昀漀爀 匀琀漀瀀 䰀漀猀猀 
tr = 0, // ​​Variable for Trailing Stop਀戀爀 㴀 　 㬀 ⼀⼀ 嘀愀爀椀愀戀氀攀 昀漀爀 戀爀攀愀欀攀瘀攀渀 
double wlot = 0 ; // Variable for your status਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// ||਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⬀ ⬀ 
int OnInit ()਀  笀 
   Comment (""); // Zeroed technical comment਀   瀀爀 ⠀∀嘀刀 ⴀⴀⴀ 匀吀䔀䄀䰀匀ⴀ ㌀ 匀琀愀爀琀攀搀℀℀℀∀⤀㬀 ⼀⼀ 䄀渀渀漀甀渀挀攀 琀栀攀 氀愀甀渀挀栀 漀昀 䄀搀瘀椀猀漀爀 
   if (StartLot <MarketInfo (Symbol (), MODE_MINLOT)) // verify the item for an error , if the item is less than the minimum set by the broker਀      眀氀漀琀 㴀 䴀愀爀欀攀琀䤀渀昀漀 ⠀匀礀洀戀漀氀 ⠀⤀Ⰰ 䴀伀䐀䔀开䴀䤀一䰀伀吀⤀㬀 ⼀⼀ 匀攀琀 琀栀攀 挀漀爀爀攀挀琀 洀椀渀椀洀甀洀 氀漀琀 
   else wlot = StartLot; // If no errors lot then work your lot਀   琀瀀 㴀 一漀爀洀愀氀椀稀攀䐀漀甀戀氀攀 ⠀吀愀欀攀倀爀漀昀椀琀 ⨀ 开倀漀椀渀琀Ⰰ 开䐀椀最椀琀猀⤀㬀 ⼀⼀ 一漀爀洀愀氀椀稀攀 琀栀攀 瘀愀氀甀攀 琀漀 琀愀欀攀 瀀爀漀昀椀琀 
   sl = NormalizeDouble (StopLoss * _Point, _Digits); // Normalize the value for the Stop Loss਀   琀爀 㴀 一漀爀洀愀氀椀稀攀䐀漀甀戀氀攀 ⠀吀爀愀氀椀渀最匀琀漀瀀 ⨀ 开倀漀椀渀琀Ⰰ 开䐀椀最椀琀猀⤀㬀 ⼀⼀ 一漀爀洀愀氀椀稀攀 琀栀攀 瘀愀氀甀攀 昀漀爀 吀爀愀椀氀椀渀最 匀琀漀瀀 
   br = NormalizeDouble (Breakeven * _Point, _Digits); // Normalize the value for breakeven਀   爀攀琀甀爀渀 ⠀䤀一䤀吀开匀唀䌀䌀䔀䔀䐀䔀䐀⤀㬀 ⼀⼀ 刀攀琀甀爀渀 琀栀攀 爀攀猀甀氀琀 漀昀 琀栀攀 伀渀䤀渀椀琀 ⠀⤀ 昀甀渀挀琀椀漀渀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// ||਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
void OnTick ()਀  笀 
   if (IsOptimization ())਀     笀 ⼀⼀ 䌀栀攀挀欀 椀昀 琀栀攀 甀猀攀爀 搀漀攀猀 渀漀琀 漀瀀琀椀洀椀稀攀 Ⰰ 椀昀 漀瀀琀椀洀椀稀椀渀最 琀栀攀 漀甀琀瀀甀琀 
      Print (" It makes no sense ! "); // User disappoint as adviser does not sell itself and has no trading strategy਀      爀攀琀甀爀渀㬀 ⼀⼀ 倀攀爀昀漀爀洀 漀瀀琀椀洀椀稀愀琀椀漀渀 洀愀欀攀猀 渀漀 猀攀渀猀攀⸀ 刀攀瀀漀爀琀 椀琀 愀渀搀 氀攀愀瘀攀 ⸀ 
     }਀   椀昀 ⠀℀ 䤀猀吀攀猀琀椀渀最 ⠀⤀ ☀☀℀ 䤀猀伀瀀琀椀洀椀稀愀琀椀漀渀 ⠀⤀⤀ ⼀⼀ 䤀昀 琀栀椀猀 椀猀 渀漀琀 愀 琀愀猀琀椀渀最 愀渀搀 漀瀀琀椀洀椀稀愀琀椀漀渀Ⰰ 眀攀 栀愀瘀攀 愀 戀椀最最攀爀 椀洀瀀愀挀琀 搀攀洀漀 漀爀 爀攀愀氀 
     {਀      眀栀椀氀攀 ⠀℀ 䤀猀匀琀漀瀀瀀攀搀 ⠀⤀⤀ 
        {// Fixated Advisor for faster until the user did not stop Adviser਀         眀漀爀挀 ⠀⤀㬀 ⼀⼀ 䌀愀氀氀 琀栀攀 洀愀椀渀 昀甀渀挀琀椀漀渀 漀昀 愀搀瘀椀猀漀爀 
         Sleep (MilSec); // After each iteration cycle pauses that would not download the PC processor਀        紀 
     }਀   攀氀猀攀 眀漀爀挀 ⠀⤀㬀 ⼀⼀ 䤀昀 琀栀椀猀 椀猀 愀 琀愀猀琀椀渀最 爀甀渀 椀渀 渀漀爀洀愀氀 洀漀搀攀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | The main function of advisor |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
void worc ()਀  笀 
   but (); // This function creates a button Hidden Charm orders and lots of choice਀   昀漀爀 ⠀椀渀琀 椀 㴀 伀爀搀攀爀猀吀漀琀愀氀 ⠀⤀ ⴀ㄀㬀 椀㸀㴀 　 㬀 椀ⴀⴀ⤀ ⼀⼀ 氀漀漀瀀椀渀最 琀栀爀漀甀最栀 琀栀攀 漀爀搀攀爀猀 
      if (OrderSelect (i, SELECT_BY_POS, MODE_TRADES)) // Parse warrants parts਀         椀昀 ⠀伀爀搀攀爀䴀愀最椀挀一甀洀戀攀爀 ⠀⤀ 㴀㴀 䴀愀最椀挀 簀簀 䴀愀最椀挀 㴀㴀 ⴀ㄀⤀ ⼀⼀ 䌀栀攀挀欀 昀漀爀 䴀攀礀搀稀栀椀欀 爀漀漀洀 
            if (OrderSymbol () == _Symbol) // Check for character trades਀              笀 
               x = y = 0 ; // Reset variables਀               䌀栀愀爀琀吀椀洀攀倀爀椀挀攀吀漀堀夀 ⠀　Ⰰ　Ⰰ ⠀伀爀搀攀爀伀瀀攀渀吀椀洀攀 ⠀⤀⤀Ⰰ 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀 ⠀⤀Ⰰ 砀Ⰰ 礀⤀㬀 ⼀⼀ 䘀椀渀搀 琀栀攀 挀漀漀爀搀椀渀愀琀攀猀 椀渀 瀀椀砀攀氀猀 昀爀漀洀 琀栀攀 漀瀀攀渀椀渀最 瀀爀椀挀攀 愀渀搀 琀栀攀 漀瀀攀渀椀渀最 琀椀洀攀 漀昀 琀栀攀 漀爀搀攀爀 
               button (StringConcatenate ("Sl", OrderTicket ()), x- 100 , y, "Sl", "StopLoss", ButX, BuyY); // Create button stop loss਀               戀甀琀琀漀渀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀吀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ 砀ⴀ 㠀　 Ⰰ 礀Ⰰ ∀吀瀀∀Ⰰ ∀吀愀欀攀倀爀漀昀椀琀∀Ⰰ 䈀甀琀堀Ⰰ 䈀甀礀夀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 戀甀琀琀漀渀 琀愀欀攀 瀀爀漀昀椀琀 
               button (StringConcatenate ("Br", OrderTicket ()), x- 60 , y, "Br", "Breakeven", ButX, BuyY); // Create button bezubytka਀               戀甀琀琀漀渀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀吀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ 砀ⴀ 㐀　 Ⰰ 礀Ⰰ ∀吀爀∀Ⰰ ∀吀琀爀愀椀氀椀渀最 匀琀漀瀀∀Ⰰ 䈀甀琀堀Ⰰ 䈀甀礀夀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 戀甀琀琀漀渀 琀爀愀椀氀椀渀最 猀琀漀瀀 
               button (StringConcatenate ("Ti", OrderTicket ()), x- 20 , y, "Ti", "Time Close", ButX, BuyY); // Create a button for the lifetime of the order਀               戀甀琀琀漀渀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀堀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ 砀Ⰰ 礀Ⰰ ∀堀∀Ⰰ ∀䌀氀漀猀攀 伀爀搀攀爀∀Ⰰ 䈀甀琀堀Ⰰ 䈀甀礀夀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 戀甀琀琀漀渀 挀氀漀猀甀爀攀 ⼀ 爀攀洀漀瘀愀氀 漀爀搀攀爀猀 
              }਀   昀漀爀 ⠀椀渀琀 椀 㴀 伀戀樀攀挀琀猀吀漀琀愀氀 ⠀⤀ ⴀ㄀㬀 椀㸀㴀 　 㬀 椀ⴀⴀ⤀ ⼀⼀ 氀漀漀瀀椀渀最 琀栀爀漀甀最栀 琀栀攀 漀戀樀攀挀琀猀 
      if (ObjectType (ObjectName (i)) == OBJ_BUTTON) // If the object fell button਀         椀昀 ⠀戀甀琀开猀琀愀琀 ⠀伀戀樀攀挀琀一愀洀攀 ⠀椀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 
            ObjectSetInteger ( 0 , ObjectName (i), OBJPROP_BGCOLOR, clrLightGreen); // Repaint the green਀   攀氀猀攀 
      ObjectSetInteger ( 0 , ObjectName (i), OBJPROP_BGCOLOR, C'230, 230,230 '); // If the button is pressed the button will return the native color਀ 
   for (int i = OrdersTotal () -1; i>= 0 ; i--) // looping through the orders਀      椀昀 ⠀伀爀搀攀爀匀攀氀攀挀琀 ⠀椀Ⰰ 匀䔀䰀䔀䌀吀开䈀夀开倀伀匀Ⰰ 䴀伀䐀䔀开吀刀䄀䐀䔀匀⤀⤀ ⼀⼀ 倀愀爀猀攀 眀愀爀爀愀渀琀猀 瀀愀爀琀猀 
         if (OrderMagicNumber () == Magic || Magic == -1) // Check for Meydzhik room਀            椀昀 ⠀伀爀搀攀爀匀礀洀戀漀氀 ⠀⤀ 㴀㴀 开匀礀洀戀漀氀⤀ ⼀⼀ 䌀栀攀挀欀 昀漀爀 挀栀愀爀愀挀琀攀爀 琀爀愀搀攀猀 
              {਀               椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀堀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 堀 
                  closeorders (OrderTicket ()); // Close the order or remove਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 　 簀簀 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㈀ 簀簀 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 㐀⤀ ⼀⼀ 圀漀爀欀 眀椀琀栀 眀愀爀爀愀渀琀猀 琀漀 瀀甀爀挀栀愀猀攀 
                 {਀                  椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 琀愀欀攀 瀀爀漀昀椀琀 
                     obj_cre (StringConcatenate ("tp", OrderTicket ()), (Ask + tp), clrGreen); // Create a graphic label਀                  攀氀猀攀 
                     obj_del (StringConcatenate ("tp", OrderTicket ())); // If the button is pressed delete object਀ 
                  if (but_stat (StringConcatenate (prefix, "Sl", OrderTicket ())) == true) // If the button is pressed the stop loss਀                     漀戀樀开挀爀攀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ ⠀䈀椀搀ⴀ猀氀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 最爀愀瀀栀椀挀 氀愀戀攀氀 
                  else਀                     漀戀樀开搀攀氀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 搀攀氀攀琀攀 漀戀樀攀挀琀 
                 }਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㄀ 簀簀 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㌀ 簀簀 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 㔀⤀ ⼀⼀ 圀攀 眀漀爀欀 眀椀琀栀 猀攀氀氀 漀爀搀攀爀猀 
                 {਀                  椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 琀愀欀攀 瀀爀漀昀椀琀 
                     obj_cre (StringConcatenate ("tp", OrderTicket ()), (Bid-tp), clrGreen); // Create a graphic label਀                  攀氀猀攀 
                     obj_del (StringConcatenate ("tp", OrderTicket ())); // If the button is pressed delete object਀ 
                  if (but_stat (StringConcatenate (prefix, "Sl", OrderTicket ())) == true) // If the button is pressed the stop loss਀                     漀戀樀开挀爀攀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ ⠀䄀猀欀 ⬀ 猀氀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 最爀愀瀀栀椀挀 氀愀戀攀氀 
                  else਀                     漀戀樀开搀攀氀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 搀攀氀攀琀攀 漀戀樀攀挀琀 
                 }਀               椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀䈀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 戀攀稀甀戀礀琀欀愀 
                 {਀                  椀昀 ⠀⠀⠀䄀猀欀ⴀ戀爀⤀㸀 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀 ⠀⤀⤀ ☀☀ 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 琀漀 戀甀礀 愀渀搀 琀栀攀 瀀爀椀挀攀 椀猀 愀戀漀瘀攀 愀 瀀爀攀搀攀琀攀爀洀椀渀攀搀 氀攀瘀攀氀 
                     obj_cre (StringConcatenate ("br", OrderTicket ()), (OrderOpenPrice ()), clrGreen); // Create a graphic label਀ 
                  if (((Bid + br) <OrderOpenPrice ()) && OrderType () == 1 ) // If an order to sell and the price is below a predetermined level਀                     漀戀樀开挀爀攀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀戀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ ⠀伀爀搀攀爀伀瀀攀渀倀爀椀挀攀 ⠀⤀⤀Ⰰ 挀氀爀䜀爀攀攀渀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 最爀愀瀀栀椀挀 氀愀戀攀氀 
                 }਀               攀氀猀攀 漀戀樀开搀攀氀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀戀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 搀攀氀攀琀攀 漀戀樀攀挀琀 
਀               椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 琀爀愀椀氀椀渀最 猀琀漀瀀 
                 {਀                  椀昀 ⠀⠀⠀䄀猀欀ⴀ琀爀⤀㸀 伀爀搀攀爀伀瀀攀渀倀爀椀挀攀 ⠀⤀⤀ ☀☀ 伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 琀漀 戀甀礀 愀渀搀 琀栀攀 瀀爀椀挀攀 椀猀 愀戀漀瘀攀 愀 瀀爀攀搀攀琀攀爀洀椀渀攀搀 氀攀瘀攀氀 
                     obj_cre (StringConcatenate ("tr", OrderTicket ()), (OrderOpenPrice ()), clrGreen); // Create a graphic label਀ 
                  if (((Bid + tr) <OrderOpenPrice ()) && OrderType () == 1 ) // If an order to sell and the price is below a predetermined level਀                     漀戀樀开挀爀攀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ ⠀伀爀搀攀爀伀瀀攀渀倀爀椀挀攀 ⠀⤀⤀Ⰰ 挀氀爀䜀爀攀攀渀⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 最爀愀瀀栀椀挀 氀愀戀攀氀 
                 }਀               攀氀猀攀 漀戀樀开搀攀氀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 搀攀氀攀琀攀 漀戀樀攀挀琀 
਀               椀昀 ⠀戀甀琀开猀琀愀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀椀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 氀椀昀攀琀椀洀攀 眀愀爀爀愀渀琀 
                  obj_cre_v_line (StringConcatenate ("ti", OrderTicket ()), clrGreen); // Create a vertical line਀               攀氀猀攀 
                  obj_del (StringConcatenate ("ti", OrderTicket ())); // If the button is pressed delete object਀              紀 
਀   栀椀猀开搀攀氀开漀戀樀 ⠀⤀㬀 ⼀⼀ 刀攀洀漀瘀攀 漀戀欀琀漀瘀 眀栀攀渀 挀氀漀猀椀渀最 漀爀搀攀爀猀 
   proverca_sl_tp_ti (); // Check for the conditions on stop loss, take profit of , time਀   瀀爀漀瘀攀爀挀愀开戀爀开琀爀 ⠀⤀㬀 ⼀⼀ 䌀栀攀挀欀 昀漀爀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 漀渀 戀攀稀甀戀礀琀欀愀 Ⰰ 吀爀愀椀氀椀渀最 匀琀漀瀀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// ||਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
bool proverca_br_tr ()਀  笀 
   for (int i = OrdersTotal () -1; i>= 0 ; i--) // looping through the orders਀      椀昀 ⠀伀爀搀攀爀匀攀氀攀挀琀 ⠀椀Ⰰ 匀䔀䰀䔀䌀吀开䈀夀开倀伀匀Ⰰ 䴀伀䐀䔀开吀刀䄀䐀䔀匀⤀⤀ ⼀⼀ 倀愀爀猀攀 眀愀爀爀愀渀琀猀 瀀愀爀琀猀 
         if (OrderMagicNumber () == Magic || Magic == -1) // Check for Meydzhik room਀            椀昀 ⠀伀爀搀攀爀匀礀洀戀漀氀 ⠀⤀ 㴀㴀 开匀礀洀戀漀氀⤀ ⼀⼀ 䌀栀攀挀欀 昀漀爀 挀栀愀爀愀挀琀攀爀 琀爀愀搀攀猀 
              {਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 䈀愀椀 
                 {਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀戀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                     if (Bid <= get_object (StringConcatenate ("br", OrderTicket ()))) // If the price returned beyond Object਀                        椀昀 ⠀伀爀搀攀爀䌀氀漀猀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 伀爀搀攀爀䰀漀琀猀 ⠀⤀Ⰰ 䈀椀搀Ⰰ 匀氀椀瀀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䌀氀漀猀攀 琀栀攀 漀爀搀攀爀 愀琀 戀攀稀甀戀礀琀欀愀 
                           pr ("Order close Ok!!!"); // If successful, we will report on the chart਀                  攀氀猀攀 
                     pr ("Order close Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀                 紀 
               if (OrderType () == 1) // If the order Cell਀                 笀 
                  if (ObjectFind (StringConcatenate ("br", OrderTicket ())) == 0) // If the object is created and the conditions are met਀                     椀昀 ⠀䄀猀欀㸀㴀 最攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀戀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 爀攀琀甀爀渀攀搀 戀攀礀漀渀搀 伀戀樀攀挀琀 
                        if (OrderClose (OrderTicket (), OrderLots (), Ask, Slip, clrRed) == true) // Close the order at bezubytka਀                           瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
                  else਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
                 }਀               ⼀⼀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⼀⼀ 
               if (OrderType () == 0) // If the order Bai਀                 笀 
                  if (ObjectFind (StringConcatenate ("tr", OrderTicket ())) == 0) // If the object is created and the conditions are met਀                    笀 
                     if ((Bid-tr)> get_object (StringConcatenate ("tr", OrderTicket ()))) // If the price rises਀                        猀攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀Ⰰ ⠀䄀猀欀ⴀ琀爀⤀⤀㬀 ⼀⼀ 䴀漀瘀攀 漀戀欀琀 琀爀愀椀氀椀渀最 猀琀漀瀀 
                     if (Bid <= get_object (StringConcatenate ("tr", OrderTicket ()))) // If the price returned beyond Object਀                        椀昀 ⠀伀爀搀攀爀䌀氀漀猀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 伀爀搀攀爀䰀漀琀猀 ⠀⤀Ⰰ 䈀椀搀Ⰰ 匀氀椀瀀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䌀氀漀猀攀 琀栀攀 琀爀愀椀氀椀渀最 猀琀漀瀀 漀爀搀攀爀 
                           pr ("Order close Ok!!!"); // If successful, we will report on the chart਀                     攀氀猀攀 
                        pr ("Order close Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀                    紀 
                 }਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㄀⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 䌀攀氀氀 
                 {਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                    {਀                     椀昀 ⠀⠀䄀猀欀 ⬀ 琀爀⤀ 㰀最攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 昀愀氀氀猀 
                        set_object (StringConcatenate ("tr", OrderTicket ()), (Bid + tr)); // Move obkt trailing stop਀                     椀昀 ⠀䄀猀欀㸀㴀 最攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 爀攀琀甀爀渀攀搀 戀攀礀漀渀搀 伀戀樀攀挀琀 
                        if (OrderClose (OrderTicket (), OrderLots (), Ask, Slip, clrRed) == true) // Close the trailing stop order਀                           瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
                     else਀                        瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
                    }਀                 紀 
              }਀   爀攀琀甀爀渀 昀愀氀猀攀㬀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function moves the object by name, and the new price |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
bool set_object (string name, double pri)਀  笀 
   return ObjectSetDouble ( 0 , name, OBJPROP_PRICE, pri); // Function moves the object by name, and the new price਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀簀 
// + ----------------------------------------------- -------------------਀戀漀漀氀 瀀爀漀瘀攀爀挀愀开猀氀开琀瀀开琀椀 ⠀⤀ 
  {਀   昀漀爀 ⠀椀渀琀 椀 㴀 伀爀搀攀爀猀吀漀琀愀氀 ⠀⤀ ⴀ㄀㬀 椀㸀㴀 　 㬀 椀ⴀⴀ⤀ ⼀⼀ 䤀琀攀爀愀琀攀 漀爀搀攀爀猀 
      if (OrderSelect (i, SELECT_BY_POS, MODE_TRADES)) // Parse warrant component parts਀         椀昀 ⠀伀爀搀攀爀䴀愀最椀挀一甀洀戀攀爀 ⠀⤀ 㴀㴀 䴀愀最椀挀 簀簀 䴀愀最椀挀 㴀㴀 ⴀ㄀⤀ ⼀⼀ 椀昀 漀甀爀 䴀愀最椀挀 
            if (OrderSymbol () == _Symbol) // if our character਀              笀 
               if (OrderType () == 0) // If the order Bai਀                 笀 
                  if (ObjectFind (StringConcatenate ("tp", OrderTicket ())) == 0) // If the object is created and the conditions are met਀                     椀昀 ⠀䈀椀搀㸀 最攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 椀猀 愀戀漀瘀攀 琀栀攀 漀戀樀攀挀琀 琀愀欀攀瀀爀漀昀椀琀 
                        if (OrderClose (OrderTicket (), OrderLots (), Bid, Slip, clrRed) == true) // Close the order਀                           瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
                  else਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                     if (Bid <get_object (StringConcatenate ("sl", OrderTicket ()))) // If the price is below the stop loss Object਀                        椀昀 ⠀伀爀搀攀爀䌀氀漀猀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 伀爀搀攀爀䰀漀琀猀 ⠀⤀Ⰰ 䈀椀搀Ⰰ 匀氀椀瀀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䌀氀漀猀攀 琀栀攀 漀爀搀攀爀 
                           pr ("Order close Ok!!!"); // If successful, we will report on the chart਀                  攀氀猀攀 
                     pr ("Order close Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀ 
                  if (ObjectFind (StringConcatenate ("ti", OrderTicket ())) == 0) // If the object is created and the conditions are met਀                     椀昀 ⠀⠀椀渀琀⤀ 吀椀洀攀䌀甀爀爀攀渀琀 ⠀⤀㸀 ⠀椀渀琀⤀ 最攀琀开漀戀樀攀挀琀开琀椀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀椀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 琀椀洀攀 椀猀 氀漀渀最攀爀 眀愀爀爀愀渀琀 伀戀樀攀挀琀 䰀椀昀攀 
                        if (OrderClose (OrderTicket (), OrderLots (), Bid, Slip, clrRed) == true) // Close the order਀                           瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
                  else਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
                 }਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㄀⤀ 
                 {਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                     if (Ask <get_object (StringConcatenate ("tp", OrderTicket ()))) // If the price is below the object takeprofit਀                        椀昀 ⠀伀爀搀攀爀䌀氀漀猀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 伀爀搀攀爀䰀漀琀猀 ⠀⤀Ⰰ 䄀猀欀Ⰰ 匀氀椀瀀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䌀氀漀猀攀 琀栀攀 漀爀搀攀爀 
                           pr ("Order close Ok!!!"); // If successful, we will report on the chart਀                  攀氀猀攀 
                     pr ("Order close Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀ 
                  if (ObjectFind (StringConcatenate ("sl", OrderTicket ())) == 0) // If the object is created and the conditions are met਀                     椀昀 ⠀䄀猀欀㸀 最攀琀开漀戀樀攀挀琀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 椀猀 愀戀漀瘀攀 琀栀攀 漀戀樀攀挀琀 猀琀漀瀀 氀漀猀猀 
                        if (OrderClose (OrderTicket (), OrderLots (), Ask, Slip, clrRed) == true) // Close the order਀                           瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
                  else਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀椀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                     if ((int) TimeCurrent ()> (int) get_object_ti (StringConcatenate ("ti", OrderTicket ()))) // If the time is longer warrant Object Life਀                        椀昀 ⠀伀爀搀攀爀䌀氀漀猀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 伀爀搀攀爀䰀漀琀猀 ⠀⤀Ⰰ 䄀猀欀Ⰰ 匀氀椀瀀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䌀氀漀猀攀 琀栀攀 漀爀搀攀爀 
                           pr ("Order close Ok!!!"); // If successful, we will report on the chart਀                  攀氀猀攀 
                     pr ("Order close Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀                 紀 
               if (OrderType ()> 1)਀                  椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀椀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀戀樀攀挀琀 椀猀 挀爀攀愀琀攀搀 愀渀搀 琀栀攀 挀漀渀搀椀琀椀漀渀猀 愀爀攀 洀攀琀 
                     if ((int) TimeCurrent ()> (int) get_object_ti (StringConcatenate ("ti", OrderTicket ()))) // If the time is longer warrant Object Life਀                        椀昀 ⠀伀爀搀攀爀䐀攀氀攀琀攀 ⠀伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 搀攀氀攀琀攀 琀栀攀 漀爀搀攀爀 
                           pr ("Order delete Ok!!!"); // If successful, we will report on the chart਀               攀氀猀攀 
                  pr ("Order delete Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀              紀 
   return false;਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 吀栀攀 昀甀渀挀琀椀漀渀 爀攀琀甀爀渀猀 愀 琀椀洀攀 漀戀樀攀挀琀 氀椀昀攀琀椀洀攀 漀爀搀攀爀猀 簀 
// + ----------------------------------------------- -------------------਀搀愀琀攀琀椀洀攀 最攀琀开漀戀樀攀挀琀开琀椀 ⠀猀琀爀椀渀最 渀愀洀攀⤀ 
  {਀   爀攀琀甀爀渀 ⠀搀愀琀攀琀椀洀攀⤀ 伀戀樀攀挀琀䜀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 渀愀洀攀Ⰰ 伀䈀䨀倀刀伀倀开吀䤀䴀䔀⤀㬀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function vzvraschaet price Object |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
double get_object (string name)਀  笀 
   return ObjectGetDouble ( 0 , name, OBJPROP_PRICE);਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 䘀甀渀挀琀椀漀渀 挀爀攀愀琀攀猀 漀戀樀攀挀琀 氀椀昀攀琀椀洀攀 漀爀搀攀爀猀 簀 
// + ----------------------------------------------- -------------------਀瘀漀椀搀 漀戀樀开挀爀攀开瘀开氀椀渀攀⠀猀琀爀椀渀最 琀砀琀Ⰰ挀漀氀漀爀 挀漀氀⤀ 
  {਀   椀昀⠀伀戀樀攀挀琀䘀椀渀搀⠀　Ⰰ琀砀琀⤀㴀㴀ⴀ㄀⤀ 
     {਀      伀戀樀攀挀琀䌀爀攀愀琀攀⠀　Ⰰ琀砀琀Ⰰ伀䈀䨀开嘀䰀䤀一䔀Ⰰ　Ⰰ吀椀洀攀嬀　崀⬀开倀攀爀椀漀搀⨀㄀　⨀㘀　Ⰰ　⤀㬀 
      ObjectSetInteger(0,txt,OBJPROP_TIME,Time[0]+_Period*10*60);਀      伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀⠀　Ⰰ琀砀琀Ⰰ伀䈀䨀倀刀伀倀开䌀伀䰀伀刀Ⰰ挀漀氀⤀㬀 
      ObjectSetInteger(0,txt,OBJPROP_WIDTH,2);਀      伀戀樀攀挀琀匀攀琀匀琀爀椀渀最⠀　Ⰰ琀砀琀Ⰰ伀䈀䨀倀刀伀倀开吀伀伀䰀吀䤀倀Ⰰ琀砀琀⤀㬀 
      WindowRedraw();਀     紀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function creates obek graphic label |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
void obj_cre (string txt, double pri, color col)਀  笀 
   if (ObjectFind ( 0 , txt) == -1)਀     笀 
      ObjectCreate ( 0 , txt, OBJ_ARROW_RIGHT_PRICE, 0 , Time [ 0 ], pri);਀      伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开吀䤀䴀䔀Ⰰ 吀椀洀攀 嬀 　崀⤀㬀 
      ObjectSetDouble ( 0 , txt, OBJPROP_PRICE, pri);਀      伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开䌀伀䰀伀刀Ⰰ 挀漀氀⤀㬀 
      ObjectSetInteger ( 0 , txt, OBJPROP_WIDTH, 3);਀      伀戀樀攀挀琀匀攀琀匀琀爀椀渀最 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开吀伀伀䰀吀䤀倀Ⰰ 琀砀琀⤀㬀 
      WindowRedraw ();਀     紀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function removes the object by name |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
void obj_del (string txt)਀  笀 
   ObjectDelete ( 0 , txt);਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 䘀甀渀挀琀椀漀渀 爀攀洀漀瘀攀猀 漀戀樀攀挀琀猀 愀渀搀 挀漀洀瀀氀攀琀攀 攀砀攀挀甀琀椀漀渀 漀昀 漀爀搀攀爀猀 簀 
// + ----------------------------------------------- -------------------਀瘀漀椀搀 栀椀猀开搀攀氀开漀戀樀 ⠀⤀ 
  {਀   昀漀爀 ⠀椀渀琀 椀 㴀 伀爀搀攀爀猀䠀椀猀琀漀爀礀吀漀琀愀氀 ⠀⤀ ⴀ㄀㬀 椀㸀㴀 　 㬀 椀ⴀⴀ⤀ 
      if (OrderSelect (i, SELECT_BY_POS, MODE_HISTORY))਀         椀昀 ⠀伀爀搀攀爀䴀愀最椀挀一甀洀戀攀爀 ⠀⤀ 㴀㴀 䴀愀最椀挀 簀簀 䴀愀最椀挀 㴀㴀 ⴀ㄀⤀ 
            if (OrderSymbol () == _Symbol)਀              笀 
               ObjectDelete ( 0 , StringConcatenate (prefix, "Sl", OrderTicket ()));਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀瀀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
               ObjectDelete ( 0 , StringConcatenate (prefix, "Br", OrderTicket ()));਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀吀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
               ObjectDelete ( 0 , StringConcatenate (prefix, "Ti", OrderTicket ()));਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ ∀堀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀猀氀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
               ObjectDelete ( 0 , StringConcatenate ("tp", OrderTicket ()));਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀戀爀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
               ObjectDelete ( 0 , StringConcatenate ("tr", OrderTicket ()));਀               伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀ 　 Ⰰ 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀琀椀∀Ⰰ 伀爀搀攀爀吀椀挀欀攀琀 ⠀⤀⤀⤀㬀 
਀              紀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function closes an order for tikketu or delete a pending order |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
bool closeorders (int tik)਀  笀 
   string sy = "";਀   椀昀 ⠀伀爀搀攀爀匀攀氀攀挀琀 ⠀琀椀欀Ⰰ 匀䔀䰀䔀䌀吀开䈀夀开吀䤀䌀䬀䔀吀⤀⤀ 
      if (OrderMagicNumber () == Magic || Magic == -1)਀         椀昀 ⠀伀爀搀攀爀匀礀洀戀漀氀 ⠀⤀ 㴀㴀 开匀礀洀戀漀氀⤀ 
            if (OrderTicket () == tik)਀              笀 
               sy = OrderSymbol ();਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 䈀愀椀 
                  if (OrderClose (OrderTicket (), OrderLots (), MarketInfo (sy, MODE_BID), Slip, clrRed) == true)਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
               else਀                  瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
਀               椀昀 ⠀伀爀搀攀爀吀礀瀀攀 ⠀⤀ 㴀㴀 ㄀⤀ ⼀⼀ 䤀昀 琀栀攀 漀爀搀攀爀 䌀攀氀氀 
                  if (OrderClose (OrderTicket (), OrderLots (), MarketInfo (sy, MODE_ASK), Slip, clrRed) == true)਀                     瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 伀欀℀℀℀∀⤀㬀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀昀甀氀Ⰰ 眀攀 眀椀氀氀 爀攀瀀漀爀琀 漀渀 琀栀攀 挀栀愀爀琀 
               else਀                  瀀爀 ⠀∀伀爀搀攀爀 挀氀漀猀攀 䔀爀爀漀爀℀℀℀∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 䤀昀 椀琀 昀愀椀氀猀Ⰰ 爀攀琀甀爀渀 愀渀 攀爀爀漀爀 洀攀猀猀愀最攀 
               if (OrderType ()> 1) // If the Pending਀                  椀昀 ⠀伀爀搀攀爀䐀攀氀攀琀攀 ⠀琀椀欀Ⰰ 挀氀爀刀攀搀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 搀攀氀攀琀攀 琀栀攀 漀爀搀攀爀 
                     pr ("Order delete Ok!!!"); // If successful, we will report on the chart਀               攀氀猀攀 
                  pr ("Order delete Error!!!" + Error (GetLastError ()), clrRed); // If it fails, return an error message਀              紀 
   return false;਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀簀 
// + ----------------------------------------------- -------------------਀瘀漀椀搀 戀甀琀 ⠀⤀ 
  {਀   搀漀甀戀氀攀 䐀椀猀琀 㴀 一漀爀洀愀氀椀稀攀䐀漀甀戀氀攀 ⠀ 㔀　　 ⨀ 开倀漀椀渀琀Ⰰ 开䐀椀最椀琀猀⤀㬀 ⼀⼀ 䐀椀猀琀愀渀挀攀 琀漀 搀攀昀愀甀氀琀猀 琀漀 猀攀琀 瀀攀渀搀椀渀最 漀爀搀攀爀猀 
   button ("LOTS", 5,40, "LOTS" + DoubleToStr (wlot, 2 ), "LOTS", 100,20); // Create a button to select lots਀   戀甀琀琀漀渀 ⠀∀䈀唀夀∀Ⰰ 㔀Ⰰ㘀㔀Ⰰ ∀䈀唀夀∀Ⰰ ∀䈀唀夀∀Ⰰ ㄀　　Ⰰ㈀　⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 戀甀琀琀漀渀 琀漀 漀瀀攀渀 琀栀攀 眀愀爀爀愀渀琀 䈀愀椀 
   button ("SEL", 5,90, "SEL", "SEL", 100,20); // Create a button to open a Sell Order਀   戀甀琀琀漀渀 ⠀∀䈀唀夀 䰀∀Ⰰ 㔀Ⰰ㄀㄀㔀Ⰰ ∀䈀唀夀 䰀∀Ⰰ ∀䈀唀夀 䰀䤀䴀䤀吀∀Ⰰ ㄀　　Ⰰ㈀　⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 戀甀琀琀漀渀 琀漀 漀瀀攀渀 愀 䈀甀礀 䰀椀洀椀琀 漀爀搀攀爀 
   button("SELL L",5,140,"SELL L ","SELL LIMIT",100,20);  // Create a button to open a Sell Limit Order਀   戀甀琀琀漀渀 ⠀∀䈀唀夀 匀∀Ⰰ 㔀Ⰰ㄀㘀㔀Ⰰ ∀䈀唀夀 匀∀Ⰰ ∀䈀唀夀 匀吀伀倀∀Ⰰ ㄀　　Ⰰ㈀　⤀㬀 ⼀⼀ 䌀爀攀愀琀攀 愀 戀甀琀琀漀渀 琀漀 漀瀀攀渀 愀 䈀甀礀 匀琀漀瀀 漀爀搀攀爀 
   button ("SELL S", 5,190, "SELL S", "SELL STOP", 100,20); // Create a button to open a Sell Stop orders਀   椀昀 ⠀戀甀琀开猀琀愀琀 ⠀瀀爀攀昀椀砀 ⬀ ∀䈀唀夀∀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 䈀愀椀 
      if (openorders (_Symbol, 0 , wlot) == true) // Open the warrant਀         戀甀琀琀漀渀开漀昀昀 ⠀∀䈀唀夀∀⤀㬀 ⼀⼀ 吀爀愀渀猀氀愀琀攀 戀甀琀琀漀渀 椀渀 琀栀攀 搀椀猀愀戀氀攀搀 猀琀愀琀攀 
   if (but_stat (prefix + "SEL") == true) // If pressed Cell਀      椀昀 ⠀漀瀀攀渀漀爀搀攀爀猀 ⠀开匀礀洀戀漀氀Ⰰ ㄀ Ⰰ 眀氀漀琀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 伀瀀攀渀 琀栀攀 眀愀爀爀愀渀琀 
         button_off ("SEL"); // Translate button in the disabled state਀   椀昀 ⠀戀甀琀开猀琀愀琀 ⠀瀀爀攀昀椀砀 ⬀ ∀䈀唀夀 䰀∀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 䈀甀礀 䰀椀洀椀琀 
      if (openorders (_Symbol, 2 , wlot, Ask-Dist) == true) // Open the warrant਀         戀甀琀琀漀渀开漀昀昀 ⠀∀䈀唀夀 䰀∀⤀㬀 ⼀⼀ 吀爀愀渀猀氀愀琀攀 戀甀琀琀漀渀 椀渀 琀栀攀 搀椀猀愀戀氀攀搀 猀琀愀琀攀 
   if (but_stat (prefix + "SELL L") == true) // If pressed Sell Limit਀      椀昀 ⠀漀瀀攀渀漀爀搀攀爀猀 ⠀开匀礀洀戀漀氀Ⰰ ㌀ Ⰰ 眀氀漀琀Ⰰ 䈀椀搀 ⬀ 䐀椀猀琀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 伀瀀攀渀 琀栀攀 眀愀爀爀愀渀琀 
         button_off ("SELL L"); // Translate button in the disabled state਀   椀昀 ⠀戀甀琀开猀琀愀琀 ⠀瀀爀攀昀椀砀 ⬀ ∀䈀唀夀 匀∀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 䤀昀 瀀爀攀猀猀攀搀 䈀甀礀 匀琀漀瀀 
      if (openorders (_Symbol, 4 , wlot, Ask + Dist) == true) // Open the warrant਀         戀甀琀琀漀渀开漀昀昀 ⠀∀䈀唀夀 匀∀⤀㬀 ⼀⼀ 吀爀愀渀猀氀愀琀攀 戀甀琀琀漀渀 椀渀 琀栀攀 搀椀猀愀戀氀攀搀 猀琀愀琀攀 
   if (but_stat (prefix + "SELL S") == true) // If pressed Sell Stop਀      椀昀 ⠀漀瀀攀渀漀爀搀攀爀猀 ⠀开匀礀洀戀漀氀Ⰰ 㔀 Ⰰ 眀氀漀琀Ⰰ 䈀椀搀ⴀ䐀椀猀琀⤀ 㴀㴀 琀爀甀攀⤀ ⼀⼀ 伀瀀攀渀 琀栀攀 眀愀爀爀愀渀琀 
         button_off ("SELL S"); // Translate button in the disabled state਀ 
   if (but_stat (prefix + "LOTS") == true) // If pressed lots of choice਀     笀 
      if (StartLot <MarketInfo (Symbol (), MODE_MINLOT)) // verify the item for an error਀         眀氀漀琀 㴀 䴀愀爀欀攀琀䤀渀昀漀 ⠀匀礀洀戀漀氀 ⠀⤀Ⰰ 䴀伀䐀䔀开䴀䤀一䰀伀吀⤀㬀 ⼀⼀ 䤀渀 挀愀猀攀 漀昀 攀爀爀漀爀 猀攀琀 琀栀攀 洀椀渀椀洀甀洀 氀漀琀 爀愀稀爀攀猀栀漀渀渀礀 
      else wlot = StartLot; // If no error work installed, you lot਀      昀漀爀 ⠀椀渀琀 椀 㴀 　 㬀 椀 㰀㴀 ㈀　 㬀 椀 ⬀⬀⤀ ⼀⼀ 䌀爀攀愀琀攀 愀 猀攀爀椀攀猀 漀昀 ㈀　 漀戀樀攀挀琀猀 
        {਀         戀甀琀琀漀渀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀氀漀琀∀Ⰰ 椀⤀Ⰰ ㄀㈀　Ⰰ㐀　 ⬀㄀㠀 ⨀ 椀Ⰰ 䐀漀甀戀氀攀吀漀匀琀爀 ⠀眀氀漀琀 ⨀ ⠀椀 ⬀㄀⤀Ⰰ ㈀ ⤀Ⰰ ∀䰀伀吀匀∀Ⰰ 㔀　Ⰰ㄀㔀⤀㬀 ⼀⼀ 䐀爀愀眀 ㈀　 猀攀氀攀挀琀椀漀渀 戀甀琀琀漀渀猀 眀椀琀栀 氀漀琀猀 漀昀 氀漀琀猀 
         if (but_stat (StringConcatenate (prefix, "lot", i)) == true) // define which button is pressed਀           笀 
            wlot = wlot * (i +1); // Remember Lot buttons਀            戀甀琀琀漀渀开漀昀昀 ⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀∀氀漀琀∀Ⰰ 椀⤀⤀㬀 ⼀⼀ 倀爀攀猀猀 琀栀攀 戀甀琀琀漀渀 琀漀 猀攀氀攀挀琀 琀栀攀 氀漀琀猀 猀攀氀攀挀琀攀搀 氀漀琀 
            button_off ("LOTS"); // Press the button to select the lots਀           紀 
        }਀     紀 
   else਀   昀漀爀 ⠀椀渀琀 砀砀 㴀 　 㬀 砀砀 㰀㴀 ㈀　 㬀 砀砀 ⬀⬀⤀ ⼀⼀ 䤀昀 琀栀攀 戀甀琀琀漀渀 椀猀 瀀爀攀猀猀攀搀 氀漀琀猀 漀昀 挀栀漀椀挀攀 
              ObjectDelete (StringConcatenate (prefix, "lot", xx)); // Remove item selection buttons 20਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 吀栀攀 昀甀渀挀琀椀漀渀 爀攀琀甀爀渀猀 琀栀攀 猀琀愀琀攀 漀昀 琀栀攀 戀甀琀琀漀渀 簀 
// + ----------------------------------------------- -------------------਀戀漀漀氀 戀甀琀开猀琀愀琀 ⠀猀琀爀椀渀最 渀愀洀攀⤀ 
  {਀   渀愀洀攀 㴀 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀渀愀洀攀⤀㬀 
   if (ObjectGetInteger ( 0 , name, OBJPROP_STATE) == true)਀      爀攀琀甀爀渀 琀爀甀攀㬀 
   return false;਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 吀栀攀 昀甀渀挀琀椀漀渀 爀攀琀甀爀渀猀 琀栀攀 猀琀愀琀攀 漀昀 琀栀攀 戀甀琀琀漀渀 琀漀 椀琀猀 漀爀椀最椀渀愀氀 猀琀愀琀攀 簀 
// + ----------------------------------------------- -------------------਀戀漀漀氀 戀甀琀琀漀渀开漀昀昀 ⠀猀琀爀椀渀最 渀愀洀攀⤀ 
  {਀   渀愀洀攀 㴀 匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀 ⠀瀀爀攀昀椀砀Ⰰ 渀愀洀攀⤀㬀 
   if (ObjectSetInteger ( 0 , name, OBJPROP_STATE, false) == true)਀      爀攀琀甀爀渀 琀爀甀攀㬀 爀攀琀甀爀渀 昀愀氀猀攀㬀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function creates a button |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
bool button (string name, int xx, int yy, string text, string tool, int widch = 200 , int heigt = 20 , color coltx = C'80, 80,80 ', color colbg = C'230, 230,230', int cor = 0)਀  笀 
   string txt = StringConcatenate (prefix, name);਀   椀昀 ⠀伀戀樀攀挀琀䘀椀渀搀 ⠀琀砀琀⤀ 㴀㴀 ⴀ㄀⤀ 
     {਀      伀戀樀攀挀琀䌀爀攀愀琀攀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀开䈀唀吀吀伀一Ⰰ 　Ⰰ　Ⰰ　⤀㬀 
      ObjectSetInteger ( 0 , txt, OBJPROP_CORNER, cor);਀      伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开䈀䜀䌀伀䰀伀刀Ⰰ 挀漀氀戀最⤀㬀 
     }਀   伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开堀䐀䤀匀吀䄀一䌀䔀Ⰰ 砀砀⤀㬀 
   ObjectSetInteger ( 0 , txt, OBJPROP_YDISTANCE, yy);਀   伀戀樀攀挀琀匀攀琀匀琀爀椀渀最 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开吀䔀堀吀Ⰰ 琀攀砀琀⤀㬀 
   ObjectSetString ( 0 , txt, OBJPROP_TOOLTIP, tool);਀   伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开堀匀䤀娀䔀Ⰰ 眀椀搀挀栀⤀㬀 
   ObjectSetInteger ( 0 , txt, OBJPROP_YSIZE, heigt);਀   伀戀樀攀挀琀匀攀琀匀琀爀椀渀最 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开䘀伀一吀Ⰰ ∀䄀爀椀愀氀∀⤀㬀 
   ObjectSetInteger ( 0 , txt, OBJPROP_COLOR, coltx);਀   伀戀樀攀挀琀匀攀琀䤀渀琀攀最攀爀 ⠀ 　 Ⰰ 琀砀琀Ⰰ 伀䈀䨀倀刀伀倀开䈀伀刀䐀䔀刀开䌀伀䰀伀刀Ⰰ 䌀✀㠀　Ⰰ 㠀　Ⰰ㠀　 ✀⤀㬀 
   ChartRedraw ();਀   爀攀琀甀爀渀 琀爀甀攀㬀 
  }਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
// | Function opens orders |਀⼀⼀ ⬀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ 
bool openorders (string sy = "", int typ = 0 , double lot = 0 , double price = 0 , string com = "") // Function discovery orders਀  笀 
   int tik = -2, p = 0 ; // Variables for਀   椀昀 ⠀猀礀 㴀㴀 ∀∀⤀ 猀礀 㴀 开匀礀洀戀漀氀㬀 ⼀⼀ 䤀昀 琀栀攀 挀栀愀爀愀挀琀攀爀 椀猀 渀漀琀 猀瀀攀挀椀昀椀攀搀 琀愀欀攀 琀栀攀 挀栀愀爀琀 猀礀洀戀漀氀 
   if (lot <MarketInfo (sy, MODE_MINLOT)) lot = MarketInfo (sy, MODE_MINLOT); // If the item is not set create a minimum lot਀   椀昀 ⠀瀀爀椀挀攀 㴀㴀 　⤀ ⼀⼀ 䤀昀 琀栀攀 瀀爀椀挀攀 椀猀 渀漀琀 椀渀搀椀挀愀琀攀搀 
     {਀      椀昀 ⠀琀礀瀀 㴀㴀 　 ⤀ 瀀爀椀挀攀 㴀 䴀愀爀欀攀琀䤀渀昀漀 ⠀猀礀Ⰰ 䴀伀䐀䔀开䄀匀䬀⤀㬀 ⼀⼀ 䘀漀爀 戀愀椀猀 儀甀漀琀攀 戀礀 猀礀洀戀漀氀 
      else price = MarketInfo (sy, MODE_BID); // For Sellonian Quote by symbol਀     紀 
   if (com == "") com = StringConcatenate (WindowExpertName (), "", Magic); // Comment warrant Name + Magic adviser Adviser਀ 
   while (IsTradeAllowed ()) // If free trade flow਀     笀 
      tik=OrderSend(sy,typ,NormalizeDouble(lot,2),NormalizeDouble(price,(int)MarketInfo(sy,MODE_DIGITS)),Slip,0,0,com,Magic,0,clrBlue); // Open the warrant਀      椀昀 ⠀琀椀欀㸀㴀 　 ⤀ 笀瀀爀 ⠀∀伀爀搀攀爀 伀瀀攀渀 伀欀℀℀℀∀⤀㬀 爀攀琀甀爀渀 琀爀甀攀㬀紀 ⼀⼀ 䤀昀 猀甀挀挀攀猀猀 眀椀氀氀 挀漀洀攀 昀爀漀洀 琀栀攀 昀甀渀挀琀椀漀渀 
      else // If not luck਀        笀 
         p ++; // Increase the count by 1਀         瀀爀 ⠀开开䘀唀一䌀吀䤀伀一开开 ⬀ ∀开䔀爀爀漀爀开∀ ⬀ 䔀爀爀漀爀 ⠀䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀Ⰰ 挀氀爀刀攀搀⤀㬀 ⼀⼀ 刀攀瀀漀爀琀攀搀 椀渀 琀栀攀 䨀漀甀爀渀愀氀 
         Sleep ( 500) ; // Wait for half a second and try again਀         椀昀 ⠀瀀㸀㴀 㔀 ⤀ 笀倀爀椀渀琀 ⠀开开䘀唀一䌀吀䤀伀一开开Ⰰ ∀ 倀爀漀戀氀攀洀猀 眀椀琀栀 琀爀愀搀攀 昀氀漀眀猀 ∀Ⰰ 猀礀Ⰰ ∀∀Ⰰ 氀漀琀Ⰰ ∀∀Ⰰ 瀀爀椀挀攀Ⰰ ∀䔀爀爀漀爀 一∀Ⰰ 䜀攀琀䰀愀猀琀䔀爀爀漀爀 ⠀⤀⤀㬀 爀攀琀甀爀渀 昀愀氀猀攀㬀紀 ⼀⼀ 䤀昀 琀栀攀 挀漀甀渀琀 椀猀 最爀攀愀琀攀爀 琀栀愀渀 漀爀 攀焀甀愀氀 琀漀 㔀 眀椀氀氀 挀漀洀攀 漀甀琀 漀昀 琀栀攀 昀愀椀氀甀爀攀 昀甀渀挀琀椀漀渀 
        }਀     紀 
   return false;਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 簀 
// + ----------------------------------------------- -------------------਀瘀漀椀搀 伀渀䐀攀椀渀椀琀 ⠀挀漀渀猀琀 椀渀琀 爀攀愀猀漀渀⤀ 
  {਀   昀漀爀 ⠀椀渀琀 欀 㴀 伀戀樀攀挀琀猀吀漀琀愀氀 ⠀⤀ ⴀ㄀㬀 欀㸀㴀 　 㬀 欀ⴀⴀ⤀ ⼀⼀ 䤀昀 琀栀攀 漀甀琀瀀甀琀 昀爀漀洀 琀栀攀 䔀䄀 
      if (StringSubstr (ObjectName (k), 0,2) == prefix) // find all the objects Adviser਀         伀戀樀攀挀琀䐀攀氀攀琀攀 ⠀伀戀樀攀挀琀一愀洀攀 ⠀欀⤀⤀㬀 ⼀⼀ 刀攀洀漀瘀攀 漀戀樀攀挀琀猀 眀椀琀栀 漀甀爀 瀀爀攀昀椀砀 
   Comment(WindowExpertName()+" successfully deinitialized !   ",getUninitReasonText(_UninitReason)); // Leave a message on the chart with the cause deinitialization Adviser਀  紀 
// + ----------------------------------------------- -------------------਀⼀⼀ 簀 吀栀攀 昀甀渀挀琀椀漀渀 爀攀琀甀爀渀猀 琀栀攀 爀攀愀猀漀渀 搀攀椀渀椀琀椀愀氀椀稀愀琀椀漀渀 愀搀瘀椀猀漀爀 簀 
// + ----------------------------------------------- -------------------਀猀琀爀椀渀最 最攀琀唀渀椀渀椀琀刀攀愀猀漀渀吀攀砀琀⠀椀渀琀 爀攀愀猀漀渀䌀漀搀攀⤀ 
  {਀   猀琀爀椀渀最 琀攀砀琀㴀∀∀㬀 
   bool Lan=(TerminalInfoString(TERMINAL_LANGUAGE)=="Russian");਀   猀眀椀琀挀栀⠀爀攀愀猀漀渀䌀漀搀攀⤀ 
     {਀      挀愀猀攀 　㨀 椀昀⠀䰀愀渀⤀ 
         text="Эксперт прекратил свою работу, вызвав функцию ExpertRemove()";   break;਀         琀攀砀琀㴀∀䄀挀挀漀甀渀琀 眀愀猀 挀栀愀渀最攀搀∀㬀                                            戀爀攀愀欀㬀 
      case 1: if(Lan)਀         琀攀砀琀㴀∀ἀ䀄㸄㌄䀄〄㰄㰄〄 䌀㐄〄㬄㔄㴄〄 䄀 ㌀䀄〄䐄㠄㨄〄∄㬀                                    戀爀攀愀欀㬀 
         text="Program "+__FILE__+" was removed from chart";                    break;਀      挀愀猀攀 ㈀㨀 椀昀⠀䰀愀渀⤀ 
         text="Программа перекомпилирована";                                    break;਀         琀攀砀琀㴀∀倀爀漀最爀愀洀 ∀⬀开开䘀䤀䰀䔀开开⬀∀ 眀愀猀 爀攀挀漀洀瀀椀氀攀搀∀㬀                            戀爀攀愀欀㬀 
      case 3: if(Lan)਀         琀攀砀琀㴀∀℀㠄㰄㈄㸄㬄 㠀㬄㠄 㼀㔄䀄㠄㸄㐄 ㌀䀄〄䐄㠄㨄〄 ㄀䬄㬄 㠀㜄㰄㔄㴄㔄㴄∄㬀                          戀爀攀愀欀㬀 
         text="Symbol or timeframe was changed";                                break;਀      挀愀猀攀 㐀㨀 椀昀⠀䰀愀渀⤀ 
         text="График закрыт";                                                  break;਀         琀攀砀琀㴀∀䌀栀愀爀琀 眀愀猀 挀氀漀猀攀搀∀㬀                                               戀爀攀愀欀㬀 
      case 5: if(Lan)਀         琀攀砀琀㴀∀ሀ䔄㸄㐄㴄䬄㔄 㼀〄䀄〄㰄㔄䈄䀄䬄 ㄀䬄㬄㠄 㠀㜄㰄㔄㴄㔄㴄䬄 㼀㸄㬄䰄㜄㸄㈄〄䈄㔄㬄㔄㰄∄㬀                  戀爀攀愀欀㬀 
         text="Input-parameter was changed";                                    break;਀      挀愀猀攀 㘀㨀 椀昀⠀䰀愀渀⤀ 
         text="Переподключение к торговому серверу ";                           break;਀         琀攀砀琀㴀∀刀攀挀漀渀渀攀挀琀 琀漀 琀栀攀 琀爀愀搀椀渀最 猀攀爀瘀攀爀∀㬀                                戀爀攀愀欀㬀 
      case 7: if(Lan)਀         琀攀砀琀㴀∀ἀ䀄㠄㰄㔄㴄㔄㴄 㐀䀄䌄㌄㸄㤄 䠀〄㄄㬄㸄㴄 ㌀䀄〄䐄㠄㨄〄∄㬀                                 戀爀攀愀欀㬀 
         text="New template was applied to chart";                              break;਀      挀愀猀攀 㠀㨀 椀昀⠀䰀愀渀⤀ 
         text="Признак того, что обработчик OnInit() вернул ненулевое значение";break;਀         琀攀砀琀㴀∀䄀 猀椀最渀 琀栀愀琀 琀栀攀 栀愀渀搀氀攀爀 伀渀䤀渀椀琀⠀⤀ 爀攀琀甀爀渀攀搀 渀漀渀ⴀ稀攀爀漀 瘀愀氀甀攀∀㬀       戀爀攀愀欀㬀 
      case 9: if(Lan)਀         琀攀砀琀㴀∀∀㔄䀄㰄㠄㴄〄㬄 ㄀䬄㬄 㜀〄㨄䀄䬄䈄∄㬀                                            戀爀攀愀欀㬀 
         text="The terminal was closed";                                        break;਀      搀攀昀愀甀氀琀㨀椀昀⠀䰀愀渀⤀ 
         text="Причина деинициализации программы не известна";਀         琀攀砀琀㴀∀䄀渀漀琀栀攀爀 爀攀愀猀漀渀∀㬀 
     }਀   爀攀琀甀爀渀 琀攀砀琀㬀 
  }਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
//| Function displays messages on the chart                          |਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
void pr(string txt,color cvet=C'80,80,80')਀  笀 
   txt=StringConcatenate(StringSubstr(TimeS(),11,8))+" - "+txt;਀   䄀爀爀愀礀刀攀猀椀稀攀⠀椀渀昀漀Ⰰ䌀漀洀攀渀琀Ⰰ㄀　　　⤀㬀 䄀爀爀愀礀刀攀猀椀稀攀⠀挀瘀椀琀Ⰰ䌀漀洀攀渀琀Ⰰ㄀　　　⤀㬀 
   for(int i=Coment-1; i>0; i--)਀     笀 
      if(info[i]!=info[i-1]) info[i]=info[i-1];਀      椀昀⠀挀瘀椀琀嬀椀崀℀㴀挀瘀椀琀嬀椀ⴀ㄀崀⤀ 挀瘀椀琀嬀椀崀㴀挀瘀椀琀嬀椀ⴀ㄀崀㬀 
     }਀   椀昀⠀椀渀昀漀嬀　崀℀㴀琀砀琀 ☀☀ 琀砀琀℀㴀∀∀⤀笀 椀渀昀漀嬀　崀㴀琀砀琀㬀 挀瘀椀琀嬀　崀㴀挀瘀攀琀㬀 紀 
   for(int i=0; i<Coment; i++)਀      戀甀琀琀漀渀⠀匀琀爀椀渀最䌀漀渀挀愀琀攀渀愀琀攀⠀∀䔀爀爀漀爀∀Ⰰ椀⤀Ⰰ㈀㔀　⬀㈀㔀㈀⨀椀Ⰰ㄀㘀Ⰰ椀渀昀漀嬀椀崀Ⰰ椀渀昀漀嬀椀崀Ⰰ㈀㔀　Ⰰ㄀㔀Ⰰ挀瘀椀琀嬀椀崀Ⰰ䌀✀㈀㌀　Ⰰ㈀㌀　Ⰰ㈀㌀　✀Ⰰ㌀⤀㬀 
  }਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
//| The function returns the time for messages on the chart          |਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
string TimeS()਀  笀 
   datetime Cur=0;਀   䌀甀爀㴀吀椀洀攀䌀甀爀爀攀渀琀⠀⤀㬀 
   RefreshRates();਀   爀攀琀甀爀渀 匀琀爀椀渀最䘀漀爀洀愀琀⠀∀─　㈀搀⸀─　㈀搀⸀─　㈀搀 ─　㈀搀ⴀ─　㈀搀ⴀ─　㈀搀∀Ⰰ吀椀洀攀夀攀愀爀⠀䌀甀爀⤀Ⰰ吀椀洀攀䴀漀渀琀栀⠀䌀甀爀⤀Ⰰ吀椀洀攀䐀愀礀⠀䌀甀爀⤀Ⰰ吀椀洀攀䠀漀甀爀⠀䌀甀爀⤀Ⰰ吀椀洀攀䴀椀渀甀琀攀⠀䌀甀爀⤀Ⰰ吀椀洀攀匀攀挀漀渀搀猀⠀䌀甀爀⤀⤀㬀 
  }਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
//| Uncomment the function number error Adviser                      |਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
string Error(int error_code)਀  笀 
   string error_string;਀   猀眀椀琀挀栀⠀攀爀爀漀爀开挀漀搀攀⤀ 
     {਀      挀愀猀攀 　㨀   攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 攀爀爀漀爀 爀攀琀甀爀渀攀搀⸀∀㬀                                                            戀爀攀愀欀㬀 
      case 1:   error_string="No error returned, but the result is unknown.";                                 break;਀      挀愀猀攀 ㈀㨀   攀爀爀漀爀开猀琀爀椀渀最㴀∀䌀漀洀洀漀渀 攀爀爀漀爀⸀∀㬀                                                                 戀爀攀愀欀㬀 
      case 3:   error_string="Invalid trade parameters.";                                                     break;਀      挀愀猀攀 㐀㨀   攀爀爀漀爀开猀琀爀椀渀最㴀∀吀爀愀搀攀 猀攀爀瘀攀爀 椀猀 戀甀猀礀⸀∀㬀                                                         戀爀攀愀欀㬀 
      case 5:   error_string="Old version of the client terminal.";                                           break;਀      挀愀猀攀 㘀㨀   攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 挀漀渀渀攀挀琀椀漀渀 眀椀琀栀 琀爀愀搀攀 猀攀爀瘀攀爀⸀∀㬀                                              戀爀攀愀欀㬀 
      case 7:   error_string="Not enough rights.";                                                            break;਀      挀愀猀攀 㠀㨀   攀爀爀漀爀开猀琀爀椀渀最㴀∀吀漀漀 昀爀攀焀甀攀渀琀 爀攀焀甀攀猀琀猀⸀∀㬀                                                        戀爀攀愀欀㬀 
      case 9:   error_string="Malfunctional trade operation.";                                                break;਀      挀愀猀攀 㘀㐀㨀  攀爀爀漀爀开猀琀爀椀渀最㴀∀䄀挀挀漀甀渀琀 搀椀猀愀戀氀攀搀⸀∀㬀                                                             戀爀攀愀欀㬀 
      case 65:  error_string="Invalid account.";                                                              break;਀      挀愀猀攀 ㄀㈀㠀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀吀爀愀搀攀 琀椀洀攀漀甀琀⸀∀㬀                                                                戀爀攀愀欀㬀 
      case 129: error_string="Invalid price.";                                                                break;਀      挀愀猀攀 ㄀㌀　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䤀渀瘀愀氀椀搀 猀琀漀瀀猀⸀∀㬀                                                                戀爀攀愀欀㬀 
      case 131: error_string="Invalid trade volume.";                                                         break;਀      挀愀猀攀 ㄀㌀㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䴀愀爀欀攀琀 椀猀 挀氀漀猀攀搀⸀∀㬀                                                             戀爀攀愀欀㬀 
      case 133: error_string="Trade is disabled.";                                                            break;਀      挀愀猀攀 ㄀㌀㐀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀琀 攀渀漀甀最栀 洀漀渀攀礀⸀∀㬀                                                             戀爀攀愀欀㬀 
      case 135: error_string="Price changed.";                                                                break;਀      挀愀猀攀 ㄀㌀㘀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀伀昀昀 焀甀漀琀攀猀⸀∀㬀                                                                   戀爀攀愀欀㬀 
      case 137: error_string="Broker is busy.";                                                               break;਀      挀愀猀攀 ㄀㌀㠀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀刀攀焀甀漀琀攀⸀∀㬀                                                                      戀爀攀愀欀㬀 
      case 139: error_string="Order is locked.";                                                              break;਀      挀愀猀攀 ㄀㐀　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䰀漀渀最 瀀漀猀椀琀椀漀渀猀 漀渀氀礀 愀氀氀漀眀攀搀⸀∀㬀                                                  戀爀攀愀欀㬀 
      case 141: error_string="Too many requests.";                                                            break;਀      挀愀猀攀 ㄀㐀㔀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䴀漀搀椀昀椀挀愀琀椀漀渀 搀攀渀椀攀搀 戀攀挀愀甀猀攀 愀渀 漀爀搀攀爀 椀猀 琀漀漀 挀氀漀猀攀 琀漀 洀愀爀欀攀琀⸀∀㬀                  戀爀攀愀欀㬀 
      case 146: error_string="Trade context is busy.";                                                        break;਀      挀愀猀攀 ㄀㐀㜀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䔀砀瀀椀爀愀琀椀漀渀猀 愀爀攀 搀攀渀椀攀搀 戀礀 戀爀漀欀攀爀⸀∀㬀                                             戀爀攀愀欀㬀 
      case 148: error_string="The amount of opened and pending orders has reached the limit set by a broker.";break;਀      挀愀猀攀 㐀　　　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 攀爀爀漀爀⸀∀㬀                                                                    戀爀攀愀欀㬀 
      case 4001: error_string="Wrong function pointer.";                                                      break;਀      挀愀猀攀 㐀　　㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䄀爀爀愀礀 椀渀搀攀砀 椀猀 漀甀琀 漀昀 爀愀渀最攀⸀∀㬀                                                 戀爀攀愀欀㬀 
      case 4003: error_string="No memory for function call stack.";                                           break;਀      挀愀猀攀 㐀　　㐀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀刀攀挀甀爀猀椀瘀攀 猀琀愀挀欀 漀瘀攀爀昀氀漀眀⸀∀㬀                                                    戀爀攀愀欀㬀 
      case 4005: error_string="Not enough stack for parameter.";                                              break;਀      挀愀猀攀 㐀　　㘀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 洀攀洀漀爀礀 昀漀爀 瀀愀爀愀洀攀琀攀爀 猀琀爀椀渀最⸀∀㬀                                              戀爀攀愀欀㬀 
      case 4007: error_string="No memory for temp string.";                                                   break;਀      挀愀猀攀 㐀　　㠀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀琀 椀渀椀琀椀愀氀椀稀攀搀 猀琀爀椀渀最⸀∀㬀                                                      戀爀攀愀欀㬀 
      case 4009: error_string="Not initialized string in an array.";                                          break;਀      挀愀猀攀 㐀　㄀　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 洀攀洀漀爀礀 昀漀爀 愀渀 愀爀爀愀礀 猀琀爀椀渀最⸀∀㬀                                               戀爀攀愀欀㬀 
      case 4011: error_string="Too long string.";                                                             break;਀      挀愀猀攀 㐀　㄀㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀刀攀洀愀椀渀搀攀爀 昀爀漀洀 稀攀爀漀 搀椀瘀椀搀攀⸀∀㬀                                                  戀爀攀愀欀㬀 
      case 4013: error_string="Zero divide.";                                                                 break;਀      挀愀猀攀 㐀　㄀㐀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀唀渀欀渀漀眀渀 挀漀洀洀愀渀搀⸀∀㬀                                                             戀爀攀愀欀㬀 
      case 4015: error_string="Wrong jump.";                                                                  break;਀      挀愀猀攀 㐀　㄀㘀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀琀 椀渀椀琀椀愀氀椀稀攀搀 愀爀爀愀礀⸀∀㬀                                                       戀爀攀愀欀㬀 
      case 4017: error_string="DLL calls are not allowed.";                                                   break;਀      挀愀猀攀 㐀　㄀㠀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䌀愀渀渀漀琀 氀漀愀搀 氀椀戀爀愀爀礀⸀∀㬀                                                         戀爀攀愀欀㬀 
      case 4019: error_string="Cannot call function.";                                                        break;਀      挀愀猀攀 㐀　㈀　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䔀䄀 昀甀渀挀琀椀漀渀 挀愀氀氀猀 愀爀攀 渀漀琀 愀氀氀漀眀攀搀⸀∀㬀                                           戀爀攀愀欀㬀 
      case 4021: error_string="Not enough memory for a string returned from a function.";                     break;਀      挀愀猀攀 㐀　㈀㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀匀礀猀琀攀洀 椀猀 戀甀猀礀⸀∀㬀                                                              戀爀攀愀欀㬀 
      case 4050: error_string="Invalid function parameters count.";                                           break;਀      挀愀猀攀 㐀　㔀㄀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䤀渀瘀愀氀椀搀 昀甀渀挀琀椀漀渀 瀀愀爀愀洀攀琀攀爀 瘀愀氀甀攀⸀∀㬀                                            戀爀攀愀欀㬀 
      case 4052: error_string="String function internal error.";                                              break;਀      挀愀猀攀 㐀　㔀㌀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀匀漀洀攀 愀爀爀愀礀 攀爀爀漀爀⸀∀㬀                                                            戀爀攀愀欀㬀 
      case 4054: error_string="Incorrect series array using.";                                                break;਀      挀愀猀攀 㐀　㔀㔀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䌀甀猀琀漀洀 椀渀搀椀挀愀琀漀爀 攀爀爀漀爀⸀∀㬀                                                      戀爀攀愀欀㬀 
      case 4056: error_string="Arrays are incompatible.";                                                     break;਀      挀愀猀攀 㐀　㔀㜀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䜀氀漀戀愀氀 瘀愀爀椀愀戀氀攀猀 瀀爀漀挀攀猀猀椀渀最 攀爀爀漀爀⸀∀㬀                                           戀爀攀愀欀㬀 
      case 4058: error_string="Global variable not found.";                                                   break;਀      挀愀猀攀 㐀　㔀㤀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䘀甀渀挀琀椀漀渀 椀猀 渀漀琀 愀氀氀漀眀攀搀 椀渀 琀攀猀琀椀渀最 洀漀搀攀⸀∀㬀                                     戀爀攀愀欀㬀 
      case 4060: error_string="Function is not confirmed.";                                                   break;਀      挀愀猀攀 㐀　㘀㄀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䴀愀椀氀 猀攀渀搀椀渀最 攀爀爀漀爀⸀∀㬀                                                          戀爀攀愀欀㬀 
      case 4062: error_string="String parameter expected.";                                                   break;਀      挀愀猀攀 㐀　㘀㌀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䤀渀琀攀最攀爀 瀀愀爀愀洀攀琀攀爀 攀砀瀀攀挀琀攀搀⸀∀㬀                                                  戀爀攀愀欀㬀 
      case 4064: error_string="Double parameter expected.";                                                   break;਀      挀愀猀攀 㐀　㘀㔀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䄀爀爀愀礀 愀猀 瀀愀爀愀洀攀琀攀爀 攀砀瀀攀挀琀攀搀⸀∀㬀                                                 戀爀攀愀欀㬀 
      case 4066: error_string="Requested history data in updating state.";                                    break;਀      挀愀猀攀 㐀　㘀㜀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀匀漀洀攀 攀爀爀漀爀 椀渀 琀爀愀搀攀 漀瀀攀爀愀琀椀漀渀 攀砀攀挀甀琀椀漀渀⸀∀㬀                                     戀爀攀愀欀㬀 
      case 4099: error_string="End of a file.";                                                               break;਀      挀愀猀攀 㐀㄀　　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀匀漀洀攀 昀椀氀攀 攀爀爀漀爀⸀∀㬀                                                             戀爀攀愀欀㬀 
      case 4101: error_string="Wrong file name.";                                                             break;਀      挀愀猀攀 㐀㄀　㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀吀漀漀 洀愀渀礀 漀瀀攀渀攀搀 昀椀氀攀猀⸀∀㬀                                                       戀爀攀愀欀㬀 
      case 4103: error_string="Cannot open file.";                                                            break;਀      挀愀猀攀 㐀㄀　㐀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䤀渀挀漀洀瀀愀琀椀戀氀攀 愀挀挀攀猀猀 琀漀 愀 昀椀氀攀⸀∀㬀                                               戀爀攀愀欀㬀 
      case 4105: error_string="No order selected.";                                                           break;਀      挀愀猀攀 㐀㄀　㘀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀唀渀欀渀漀眀渀 猀礀洀戀漀氀⸀∀㬀                                                              戀爀攀愀欀㬀 
      case 4107: error_string="Invalid price.";                                                               break;਀      挀愀猀攀 㐀㄀　㠀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䤀渀瘀愀氀椀搀 琀椀挀欀攀琀⸀∀㬀                                                              戀爀攀愀欀㬀 
      case 4109: error_string="Trade is not allowed.";                                                        break;਀      挀愀猀攀 㐀㄀㄀　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀䰀漀渀最猀 愀爀攀 渀漀琀 愀氀氀漀眀攀搀⸀∀㬀                                                       戀爀攀愀欀㬀 
      case 4111: error_string="Shorts are not allowed.";                                                      break;਀      挀愀猀攀 㐀㈀　　㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀伀戀樀攀挀琀 愀氀爀攀愀搀礀 攀砀椀猀琀猀⸀∀㬀                                                       戀爀攀愀欀㬀 
      case 4201: error_string="Unknown object property.";                                                     break;਀      挀愀猀攀 㐀㈀　㈀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀伀戀樀攀挀琀 搀漀攀猀 渀漀琀 攀砀椀猀琀⸀∀㬀                                                       戀爀攀愀欀㬀 
      case 4203: error_string="Unknown object type.";                                                         break;਀      挀愀猀攀 㐀㈀　㐀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 漀戀樀攀挀琀 渀愀洀攀⸀∀㬀                                                              戀爀攀愀欀㬀 
      case 4205: error_string="Object coordinates error.";                                                    break;਀      挀愀猀攀 㐀㈀　㘀㨀 攀爀爀漀爀开猀琀爀椀渀最㴀∀一漀 猀瀀攀挀椀昀椀攀搀 猀甀戀眀椀渀搀漀眀⸀∀㬀                                                      戀爀攀愀欀㬀 
      default:   error_string="Some error in object operation.";਀     紀 
   return(error_string);਀  紀 
//+------------------------------------------------------------------+਀⼀⼀簀                                                                  簀 
//+------------------------------------------------------------------+਀�