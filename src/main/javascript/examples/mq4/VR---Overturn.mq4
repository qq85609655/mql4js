//=========================================================================================================================================//਀⼀⼀簀 簀⼀⼀ 
//=========================================================================================================================================//਀⌀瀀爀漀瀀攀爀琀礀 挀漀瀀礀爀椀最栀琀 ∀䌀漀瀀礀爀椀最栀琀 ㈀　㄀㌀Ⰰ 眀眀眀⸀琀爀愀搀椀渀最ⴀ最漀⸀爀甀 倀爀漀樀攀挀琀⸀∀ 
#property link "http://www.trading-go.ru"਀⌀瀀爀漀瀀攀爀琀礀 瘀攀爀猀椀漀渀 ∀㄀⸀　　∀ 
#property description " Principle trade with Martingale: Received TakeProfit opened an initial lot in that direction"਀⌀瀀爀漀瀀攀爀琀礀 搀攀猀挀爀椀瀀琀椀漀渀 ∀ 刀攀挀攀椀瘀攀搀 愀 猀琀漀瀀 氀漀猀猀 漀瀀攀渀攀搀 爀攀瘀攀爀猀攀 漀爀搀攀爀 眀椀琀栀 椀渀挀爀攀愀猀攀搀 氀漀琀∀ 
#property description" ========================================================================="਀⌀瀀爀漀瀀攀爀琀礀 搀攀猀挀爀椀瀀琀椀漀渀 ∀ 琀栀攀 倀爀椀渀挀椀瀀氀攀 漀昀 琀爀愀搀攀 椀渀 䄀渀琀椀䴀愀爀琀椀渀最愀氀攀㨀 刀攀挀攀椀瘀攀搀 吀愀欀攀倀爀漀昀椀琀 漀瀀攀渀攀搀 眀椀琀栀 椀渀挀爀攀愀猀攀搀 氀漀琀 椀渀 琀栀愀琀 搀椀爀攀挀琀椀漀渀∀ 
#property description " Received a stop loss opened reverse order with an initial lot"਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
//| |//਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
#property strict਀⌀搀攀昀椀渀攀 䈀唀夀 　 ⼀⼀ 挀爀攀愀琀攀 㼀䀄㔄㐄㸄㼄䀄㔄㐄㔄㬄㔄㴄㴄丄 瘀愀爀椀愀戀氀攀 眀椀琀栀 愀 瘀愀氀甀攀 漀昀 　 
#define SEL 1 // create a variable предопределенню with a value of 1਀攀渀甀洀 猀瀀 笀 䈀甀礀Ⰰ匀攀氀氀 紀㬀 ⼀⼀ 挀爀攀愀琀攀 琀栀攀 猀攀氀攀挀琀 甀猀椀渀最 琀栀攀 攀渀甀洀 琀礀瀀攀 漀昀 琀栀攀 昀椀爀猀琀 漀爀搀攀爀 
enum tip{ Martingale,AntiMartingale};// create the select using the enum type of trade਀                                     ⼀⼀ 琀栀攀 琀礀瀀攀 漀昀 琀爀愀搀攀ⴀ䴀愀爀琀椀渀最愀氀攀Ⰰ 䄀渀琀椀䴀愀爀琀椀渀最愀氀攀 
input tip TypTrade=Martingale;਀⼀⼀ 猀琀愀爀琀 瀀漀猀椀琀椀漀渀 䈀甀礀 漀爀 匀攀氀氀 
input sp StartPoz=Buy;਀⼀⼀ 猀攀琀 琀栀攀 瘀愀氀甀攀 漀昀 吀愀欀攀倀爀漀昀椀琀 
input int TakeProfit=300;਀⼀⼀ 猀攀琀 琀栀攀 瘀愀氀甀攀 漀昀 猀琀漀瀀 氀漀猀猀 
input int StopLoss=300;਀⼀⼀ 猀攀琀 琀栀攀 戀愀猀攀 氀漀琀 
input double StartLot=0.01;਀⼀⼀ 猀攀琀 琀栀攀 瘀愀氀甀攀 漀昀 琀栀攀 洀甀氀琀椀瀀氀椀攀爀 氀漀琀猀 
input double MultiplierLot=2;਀⼀⼀ 猀攀琀 琀栀攀 瘀愀氀甀攀 䴀愀最椀挀一甀洀戀攀爀 ⴀ㄀ 椀昀 愀氀氀 䴀愀最椀挀一甀洀戀攀爀 
input int MagicNumber=227;਀⼀⼀ 猀攀琀 琀栀攀 瘀愀氀甀攀 漀昀 猀氀椀瀀瀀愀最攀 
input int Slippage=30;਀椀渀琀 吀礀瀀㴀　Ⰰ琀椀欀㴀ⴀ㈀㬀 ⼀⼀ 椀渀椀琀椀愀氀椀稀攀 最氀漀戀愀氀 瘀愀爀椀愀戀氀攀猀 
double Lot=0,Pro=0,MLot=0,ALot=0;// initialize global variables਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
//|                                                                  |਀⼀⼀⬀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ⬀ 
                                 //=========================================================================================================================================//਀⼀⼀簀 簀⼀⼀ 
//=========================================================================================================================================//਀椀渀琀 伀渀䤀渀椀琀⠀⤀ 
  {਀   䌀漀洀洀攀渀琀⠀∀∀⤀㬀 ⼀⼀ 眀椀氀氀 戀攀 攀洀瀀琀椀攀搀 琀攀挀栀渀椀挀愀氀 挀漀洀洀攀渀琀 
   if(TypTrade==0) //If the Advisor works in a mode Мартенгейл਀     笀 
      MLot=MultiplierLot; // MLot assign the value of the multiplier lot਀      䄀䰀漀琀㴀㄀㬀 ⼀⼀ က䰄漀琀 愀猀猀椀最渀 愀 瘀愀氀甀攀 漀昀 ㄀ 
     }਀   攀氀猀攀 
     {਀      䴀䰀漀琀㴀㄀㬀 ⼀⼀ ᰀ䰄漀琀 愀猀猀椀最渀 愀 瘀愀氀甀攀 ㄀ 
      ALot=MultiplierLot; // АLot assign the value of the multiplier lot਀     紀 
   return(INIT_SUCCEEDED);਀  紀 
//=========================================================================================================================================//਀⼀⼀簀 簀⼀⼀ 
//=========================================================================================================================================//਀瘀漀椀搀 伀渀吀椀挀欀⠀⤀ 
  {਀   椀昀⠀℀挀漀甀渀琀攀爀⠀䈀唀夀⤀ ☀☀ ℀挀漀甀渀琀攀爀⠀匀䔀䰀⤀⤀ ⼀⼀ 䌀栀攀挀欀 椀昀 椀猀 琀栀攀爀攀 㸀䀄㔄㐄䀄〄 䄀搀瘀椀猀漀爀 Ⰰ椀昀 渀漀琀 䈀愀攀瘀 愀渀搀 渀漀 匀攀氀漀渀椀愀渀猀 
     {਀      ⼀⼀ 䘀攀琀挀栀 搀愀琀愀 昀爀漀洀 琀栀攀 漀爀搀攀爀猀 栀椀猀琀漀爀礀 漀昀 琀栀攀 氀愀猀琀 挀氀漀猀攀搀 漀爀搀攀爀 愀渀搀 爀攀昀甀渀搀 甀猀 琀栀攀 瘀愀氀甀攀猀 爀攀焀甀椀爀攀搀 
      // order type, a lot of the order, and his profit਀      栀椀猀琀漀爀礀⠀吀礀瀀Ⰰ䰀漀琀Ⰰ倀爀漀⤀㬀 
਀      椀昀⠀倀爀漀㸀　 ☀☀ 吀礀瀀吀爀愀搀攀㴀㴀　⤀䰀漀琀㴀匀琀愀爀琀䰀漀琀㬀 ⼀⼀ 椀昀 琀栀攀 䄀搀瘀椀猀漀爀 眀漀爀欀猀 椀渀 愀 洀漀搀攀 漀昀 洀愀爀琀椀渀最愀氀攀 愀渀搀 瀀爀漀昀椀琀 最爀攀愀琀攀爀 琀栀愀渀 稀攀爀漀 
                                            // then the lot will equal start for a position in the same direction਀ 
      if(Pro<0 && TypTrade==1)Lot=StartLot; // if the Advisor works in mode антимартингейл and profit is less than zero਀                                            ⼀⼀ 琀栀攀渀 琀栀攀 氀漀琀 眀椀氀氀 攀焀甀愀氀 猀琀愀爀琀 昀漀爀 愀 瀀漀猀椀琀椀漀渀 椀渀 琀栀攀 猀愀洀攀 搀椀爀攀挀琀椀漀渀 
਀      ⼀⼀ 䘀漀爀 琀栀攀 昀椀爀猀琀 漀爀搀攀爀 
      if(Typ==0 && Lot==0 && Pro==0) // if the us of the history of orders in our magic number returned zeros਀         ⼀⼀ 琀栀攀渀 礀漀甀 渀攀攀搀 琀漀 瀀攀渀 琀栀攀 昀椀爀猀琀 漀爀搀攀爀 
         if(openorders(StartPoz,StartLot)) // if the first order is opened਀            椀昀⠀洀漀搀椀昀礀⠀⤀⤀爀攀琀甀爀渀㬀 ⼀⼀ 洀漀搀椀昀礀 椀琀 愀渀搀 椀渀 挀愀猀攀 漀昀 愀 猀甀挀挀攀猀猀昀甀氀 洀漀搀椀昀椀挀愀琀椀漀渀 眀椀氀氀 最椀瘀攀 洀愀渀愀最攀洀攀渀琀 琀攀爀洀椀渀愀氀 
਀      椀昀⠀吀礀瀀㴀㴀䈀唀夀 ☀☀ 䰀漀琀℀㴀　 ☀☀ 倀爀漀㸀　⤀ ⼀⼀ 椀昀 琀栀攀 氀愀猀琀 挀氀漀猀攀搀 漀爀搀攀爀 眀愀猀 愀 戀甀礀 愀渀搀 椀琀猀 瀀爀漀昀椀琀 椀猀 最爀攀愀琀攀爀 琀栀愀渀 稀攀爀漀 
         if(openorders(BUY,Lot*ALot)) // open an order to buy a lot depending on the type of TypTrade਀            椀昀⠀洀漀搀椀昀礀⠀⤀⤀爀攀琀甀爀渀㬀 ⼀⼀ 洀漀搀椀昀礀 椀琀 愀渀搀 椀渀 挀愀猀攀 漀昀 愀 猀甀挀挀攀猀猀昀甀氀 洀漀搀椀昀椀挀愀琀椀漀渀 眀椀氀氀 最椀瘀攀 洀愀渀愀最攀洀攀渀琀 琀攀爀洀椀渀愀氀 
਀      椀昀⠀吀礀瀀㴀㴀䈀唀夀 ☀☀ 䰀漀琀℀㴀　 ☀☀ 倀爀漀㰀　⤀ ⼀⼀ 椀昀 琀栀攀 氀愀猀琀 挀氀漀猀攀搀 漀爀搀攀爀 眀愀猀 愀 戀甀礀 愀渀搀 椀琀猀 瀀爀漀昀椀琀 椀猀 氀攀猀猀 琀栀愀渀 稀攀爀漀 
         if(openorders(SEL,Lot*MLot)) // open a warrant etc одажу lot depending on the type of TypTrade਀            椀昀⠀洀漀搀椀昀礀⠀⤀⤀爀攀琀甀爀渀㬀 ⼀⼀ 洀漀搀椀昀礀 椀琀 愀渀搀 椀渀 挀愀猀攀 漀昀 愀 猀甀挀挀攀猀猀昀甀氀 洀漀搀椀昀椀挀愀琀椀漀渀 眀椀氀氀 最椀瘀攀 洀愀渀愀最攀洀攀渀琀 琀攀爀洀椀渀愀氀 
਀      椀昀⠀吀礀瀀㴀㴀匀䔀䰀 ☀☀ 䰀漀琀℀㴀　 ☀☀ 倀爀漀㸀　⤀ ⼀⼀ 椀昀 琀栀攀 氀愀猀琀 挀氀漀猀攀搀 漀爀搀攀爀 眀愀猀 琀漀 猀攀氀氀 愀渀搀 椀琀猀 瀀爀漀昀椀琀 椀猀 最爀攀愀琀攀爀 琀栀愀渀 稀攀爀漀 
         if(openorders(SEL,Lot*ALot)) // open a warrant etc одажу lot depending on the type of TypTrade਀            椀昀⠀洀漀搀椀昀礀⠀⤀⤀爀攀琀甀爀渀㬀 ⼀⼀ 洀漀搀椀昀礀 椀琀 愀渀搀 椀渀 挀愀猀攀 漀昀 愀 猀甀挀挀攀猀猀昀甀氀 洀漀搀椀昀椀挀愀琀椀漀渀 眀椀氀氀 最椀瘀攀 洀愀渀愀最攀洀攀渀琀 琀攀爀洀椀渀愀氀 
਀      椀昀⠀吀礀瀀㴀㴀匀䔀䰀 ☀☀ 䰀漀琀℀㴀　 ☀☀ 倀爀漀㰀　⤀ ⼀⼀ 椀昀 琀栀攀 氀愀猀琀 挀氀漀猀攀搀 漀爀搀攀爀 眀愀猀 昀漀爀 猀愀氀攀 愀渀搀 瀀爀漀昀椀琀 氀攀猀猀 琀栀愀渀 稀攀爀漀 
         if(openorders(BUY,Lot*MLot)) // open an order to buy a lot depending on the type of TypTrade਀            椀昀⠀洀漀搀椀昀礀⠀⤀⤀爀攀琀甀爀渀㬀 ⼀⼀ 洀漀搀椀昀礀 椀琀 愀渀搀 椀渀 挀愀猀攀 漀昀 愀 猀甀挀挀攀猀猀昀甀氀 洀漀搀椀昀椀挀愀琀椀漀渀 眀椀氀氀 最椀瘀攀 洀愀渀愀最攀洀攀渀琀 琀攀爀洀椀渀愀氀 
     }਀   攀氀猀攀 爀攀琀甀爀渀㬀 ⼀⼀ 椀昀 琀栀攀 漀爀搀攀爀猀 愀爀攀 琀栀攀渀 瀀愀猀猀 挀漀渀琀爀漀氀 琀漀 琀栀攀 琀攀爀洀椀渀愀氀 
  }਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
//| Function query the state of the trade Advisor |//਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
bool counter(int typ) // function takes the type of the requested order਀  笀 
   for(int i=OrdersTotal()-1; i>=0; i--) // start the cycle of searching in the orders in reverse order਀      椀昀⠀伀爀搀攀爀匀攀氀攀挀琀⠀椀Ⰰ匀䔀䰀䔀䌀吀开䈀夀开倀伀匀⤀⤀ ⼀⼀ 瀀愀爀猀攀 琀栀攀 漀爀搀攀爀 漀渀 琀栀攀 瀀愀爀琀 漀昀 
         if(OrderMagicNumber()==MagicNumber || MagicNumber==-1)// Check the part of the order MagicNumber if it is our MagicNumber or MagicNumber is -1਀            椀昀⠀伀爀搀攀爀匀礀洀戀漀氀⠀⤀㴀㴀匀礀洀戀漀氀⠀⤀⤀ ⼀⼀ 挀栀攀挀欀 琀栀攀 漀爀搀攀爀 猀礀洀戀漀氀 椀昀 漀甀爀 琀栀攀渀 挀漀渀琀椀渀甀攀 漀渀 
               if(OrderType()==typ)return true;//check the part of the order-order type if it is requested us to quit the function successfully਀   爀攀琀甀爀渀 昀愀氀猀攀㬀 ⼀⼀ 椀昀 眀攀 搀椀搀渀✀琀 昀椀渀搀 琀栀攀 搀攀猀椀爀攀搀 漀爀搀攀爀 琀漀 焀甀椀琀 琀栀攀 昀甀渀挀琀椀漀渀 眀椀琀栀 愀 昀愀椀氀甀爀攀 
  }਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
//| Function to query the data of the last closed orders in time |//਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
void history(int &typ,double &lot,double &pro) // function takes the link type, lot, and profit for their processing਀  笀 
   datetime tim=0; // time value will be emptied਀   昀漀爀⠀椀渀琀 椀㴀伀爀搀攀爀猀䠀椀猀琀漀爀礀吀漀琀愀氀⠀⤀ⴀ㄀㬀 椀㸀㴀　㬀 椀ⴀⴀ⤀⼀⼀ 猀琀愀爀琀 琀栀攀 氀漀漀瀀 琀栀爀漀甀最栀 栀椀猀琀漀爀礀 漀爀搀攀爀猀 椀渀 爀攀瘀攀爀猀攀 漀爀搀攀爀 
      if(OrderSelect(i,SELECT_BY_POS,MODE_HISTORY)) // parse the order on the part of਀         椀昀⠀伀爀搀攀爀匀礀洀戀漀氀⠀⤀㴀㴀匀礀洀戀漀氀⠀⤀⤀ ⼀⼀ 挀栀攀挀欀 琀栀攀 漀爀搀攀爀 猀礀洀戀漀氀 椀昀 漀甀爀 琀栀攀渀 挀漀渀琀椀渀甀攀 漀渀 
            if(OrderMagicNumber()==MagicNumber || MagicNumber==-1)// Check the part of the order MagicNumber if it is our MagicNumber or MagicNumber is -1਀               椀昀⠀伀爀搀攀爀䌀氀漀猀攀吀椀洀攀⠀⤀㸀琀椀洀⤀ ⼀⼀ 椀昀 琀栀攀 琀椀洀攀 漀昀 挀氀漀猀椀渀最 洀漀爀攀 漀昀 漀甀爀 瘀愀爀椀愀戀氀攀 琀椀洀 
                 {਀                  琀椀洀㴀伀爀搀攀爀䌀氀漀猀攀吀椀洀攀⠀⤀㬀 ⼀⼀ 猀琀漀爀攀 琀栀攀 琀椀洀攀 漀昀 挀氀漀猀椀渀最 漀爀搀攀爀猀 
                  typ=OrderType(); // store the type of the order਀                  氀漀琀㴀伀爀搀攀爀䰀漀琀猀⠀⤀㬀 ⼀⼀ 猀琀漀爀攀 愀 氀漀琀 漀爀搀攀爀猀 
                  pro=OrderProfit(); // store profit orders਀                 紀 
  }਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
//| A function to open the order |//਀⼀⼀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀㴀⼀⼀ 
bool openorders(int typ,double lot) // Function takes the type of order and the desired lot਀  笀 
   double price=0; int p=0; // will be emptied variables for rates and counter attempts of opening orders਀   椀昀⠀琀礀瀀㴀㴀䈀唀夀⤀ ⼀⼀ 椀昀 眀攀 眀愀渀琀 琀漀 漀瀀攀渀 愀 戀甀礀 漀爀搀攀爀 
      price=NormalizeDouble(Ask,_Digits); // fetch a price for its opening and immediately notifies its normalize under 4 or 5 characters automatically਀   攀氀猀攀 ⼀⼀ 椀昀 眀攀 眀愀渀琀 琀漀 漀瀀攀渀 愀 猀攀氀氀 漀爀搀攀爀 
   price=NormalizeDouble(Bid,_Digits); // fetch a price for its opening and immediately notifies its normalize under 4 or 5 characters automatically਀   椀昀⠀䤀猀吀爀愀搀攀䄀氀氀漀眀攀搀⠀⤀⤀ ⼀⼀ 挀栀攀挀欀 眀栀攀琀栀攀爀 琀栀攀 焀甀漀琀攀猀 昀氀漀眀 愀渀搀 挀愀渀 眀攀 漀瀀攀渀 琀栀攀 漀爀搀攀爀 
      while(p<5) // start the cycle attempts to open the order of 5 attempts਀        笀 ⼀⼀ 猀攀渀搀 琀栀攀 洀愀氀昀漀爀洀攀搀 爀攀焀甀攀猀琀 琀漀 琀栀攀 猀攀爀瘀攀爀 戀爀漀欀攀爀 
         tik=OrderSend(Symbol(),typ,NormalizeDouble(lot,2),NormalizeDouble(price,_Digits),Slippage,0,0,WindowExpertName()+" "+(string)MagicNumber,MagicNumber,0,clrBlue);਀         椀昀⠀琀椀欀㸀㴀　⤀ ⼀⼀ 椀昀 漀甀爀 漀爀搀攀爀 愀瀀瀀爀漀瘀攀搀 爀攀洀攀洀戀攀爀 栀椀猀 琀椀挀欀攀琀 椀渀 愀 瘀愀爀椀愀戀氀攀 琀椀欀 
            return true; // leave functions successfully਀         攀氀猀攀 ⼀⼀ 椀昀 琀栀攀 猀攀爀瘀攀爀 搀椀搀 渀漀琀 愀挀挀攀瀀琀 漀甀爀 漀爀搀攀爀 
           {਀            瀀⬀⬀㬀 ⼀⼀ 椀渀挀爀攀洀攀渀琀 琀栀攀 挀漀甀渀琀攀爀 戀礀 ㄀ 
            Print(__FUNCTION__,"_Error_",GetLastError()); // output the log function name and the number of errors਀            匀氀攀攀瀀⠀㔀　　⤀㬀 ⼀⼀ 眀愀椀琀 栀愀氀昀 愀 猀攀挀漀渀搀 琀漀 爀攀瀀攀愀琀 愀 爀攀焀甀攀猀琀 
           }਀        紀 
   return false; // if the 5 attempts, the order is not opened emerge from a function fails਀  紀 
//=========================================================================================================================================//਀⼀⼀簀 昀甀渀挀琀椀漀渀 琀漀 洀漀搀椀昀礀 漀爀搀攀爀猀 簀⼀⼀ 
//=========================================================================================================================================//਀戀漀漀氀 洀漀搀椀昀礀⠀⤀ ⼀⼀ 昀甀渀挀琀椀漀渀 琀愀欀攀猀 渀漀 瘀愀氀甀攀猀 愀渀搀 瀀爀漀挀攀猀猀攀猀 琀椀挀欀攀琀 漀爀搀攀爀 琀栀愀琀 眀攀 爀攀洀攀洀戀攀爀 椀渀 昀甀渀挀琀椀漀渀 漀瀀攀渀漀爀搀攀爀猀⠀⤀ 
  {਀   椀渀琀 瀀㴀　㬀 ⼀⼀ 圀椀氀氀 戀攀 攀洀瀀琀椀攀搀 挀漀甀渀琀攀爀 愀琀琀攀洀瀀琀猀 琀漀 洀漀搀椀昀礀 愀渀 漀爀搀攀爀 
   double sl=0,tp=0; // will be emptied variables for stop loss and take profit਀ 
   if(tik>=0) // ticket which we received from the function openorders() if it is more or equal to zero਀      椀昀⠀伀爀搀攀爀匀攀氀攀挀琀⠀琀椀欀Ⰰ匀䔀䰀䔀䌀吀开䈀夀开吀䤀䌀䬀䔀吀⤀⤀ ⼀⼀ 瀀愀爀猀攀 琀栀攀 漀爀搀攀爀 漀渀 琀栀攀 瀀愀爀琀 漀昀 
         if(OrderType()==BUY) // if the order type buying਀           笀 
            tp=NormalizeDouble(Ask+TakeProfit*_Point,_Digits); // 'll calculate the price of take profit and normalize it for 4 or 5 nakova automatically਀            猀氀㴀一漀爀洀愀氀椀稀攀䐀漀甀戀氀攀⠀䄀猀欀ⴀ匀琀漀瀀䰀漀猀猀 ⨀开倀漀椀渀琀Ⰰ开䐀椀最椀琀猀⤀㬀 ⼀⼀ ✀氀氀 挀愀氀挀甀氀愀琀攀 琀栀攀 瀀爀椀挀攀 漀昀 猀琀漀瀀 氀漀猀猀 愀渀搀 渀漀爀洀愀氀椀稀攀 椀琀 昀漀爀 㐀 漀爀 㔀 渀愀欀漀瘀愀 愀甀琀漀洀愀琀椀挀愀氀氀礀 
           }਀   攀氀猀攀 ⼀⼀ 椀昀 琀栀攀 琀礀瀀攀 漀昀 琀栀攀 漀爀搀攀爀 猀愀氀攀 
     {਀      琀瀀㴀一漀爀洀愀氀椀稀攀䐀漀甀戀氀攀⠀䈀椀搀ⴀ吀愀欀攀倀爀漀昀椀琀⨀开倀漀椀渀琀Ⰰ开䐀椀最椀琀猀⤀㬀 ⼀⼀ ✀氀氀 挀愀氀挀甀氀愀琀攀 琀栀攀 瀀爀椀挀攀 漀昀 琀愀欀攀 瀀爀漀昀椀琀 愀渀搀 渀漀爀洀愀氀椀稀攀 椀琀 昀漀爀 㐀 漀爀 㔀 渀愀欀漀瘀愀 愀甀琀漀洀愀琀椀挀愀氀氀礀 
      sl=NormalizeDouble(Bid+StopLoss *_Point,_Digits); // 'll calculate the price of stop loss and normalize it for 4 or 5 nakova automatically਀     紀 
   if(IsTradeAllowed()) // check whether quotations and whether we can open order਀      眀栀椀氀攀⠀瀀㰀㔀⤀ ⼀⼀ 猀琀愀爀琀 琀栀攀 挀礀挀氀攀 愀琀琀攀洀瀀琀猀 琀漀 洀漀搀椀昀礀 愀渀 漀爀搀攀爀 漀渀 㔀 愀琀琀攀洀瀀琀猀 
        {਀         椀昀⠀伀爀搀攀爀䴀漀搀椀昀礀⠀琀椀欀Ⰰ伀爀搀攀爀伀瀀攀渀倀爀椀挀攀⠀⤀Ⰰ猀氀Ⰰ琀瀀Ⰰ　⤀㴀㴀琀爀甀攀⤀⼀⼀ 椀昀 猀甀挀挀攀猀猀昀甀氀 
            return true; // return result of the success਀         攀氀猀攀 ⼀⼀ 椀昀 渀漀琀 最漀漀搀 氀甀挀欀 
           {਀            瀀⬀⬀㬀 ⼀⼀ 椀渀挀爀攀洀攀渀琀 琀栀攀 挀漀甀渀琀攀爀 戀礀 ㄀ 
            Print(__FUNCTION__,"_Error_",GetLastError()); // output the log function name and the number of errors਀            匀氀攀攀瀀⠀㔀　　⤀㬀 ⼀⼀ 眀愀椀琀 栀愀氀昀 愀 猀攀挀漀渀搀 琀漀 爀攀瀀攀愀琀 愀 爀攀焀甀攀猀琀 
           }਀        紀 
   return false; // if the 5 attempts, the order is not opened emerge from a function fails਀  紀 
//=========================================================================================================================================//਀⼀⼀簀 簀⼀⼀ 
//=========================================================================================================================================//਀�