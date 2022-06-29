pragma solidity >= 0.7.0 < 0.9.0;
 
contract storeToken {
 
   string public STORE_NAME; // store these data
   uint128 public profit;
   uint128 public discountedPrice = 1500;
// address = userID
// bitcoin[] listOfBitCoins;
// bitcoin1[address1, address2];
   constructor(uint128 _profit, string memory _STORE_NAME){ // pass info within constructor => memory is storing data
   // memory is how long the var will be alive / params is temporary variables
      
       profit = _profit;
       STORE_NAME = _STORE_NAME;
        // need the params to make the contract work
   } // storing values
    // _userInput is only present in the constructor scope
 
   // three profit functions
  
   function myStore() public view returns(string memory){
       return(STORE_NAME);
   }
 
   function buy() public returns(uint128) { // view is getting something and displaying it / not changeable
       profit+=20;
// gas fee is etherium / A view does not change any value so it won't increase gas
   }
   function refund() public returns(uint128){
       profit-=20;
 
   }
   function discountedProfit() public returns(uint128){
       return profit -= ((profit * discountedPrice) / 10000);
           // return uint128(int256(profit) / int256(10000) * int256(discountedPrice));
   }
   // viewing Profits
   function viewProfits() public view returns(uint128){
       return profit;
 
   }
  
}
