// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract Event {
    //Event allow log on blockchain
    //Gas acisindan ve yer kaplama açisindan daha az maliyetli
    
    uint public stateAge = 18;

    event NewUser(address userAddress, string name, uint age);

    function createUser(string memory _name) public {
    //user created

    emit NewUser(msg.sender,_name, stateAge);
  
    }





    event ItemSold(address seller,address buyer, string itemName, uint price);

    function sellItem(address _buyer, string memory _name, uint _price) public {
        //product sold

        emit ItemSold(msg.sender,_buyer,_name,_price);
    }




}