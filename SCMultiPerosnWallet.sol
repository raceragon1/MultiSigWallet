// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;


contract MultiPersonWallet {

    //Making the set of people 
    struct Participant{
        address participant;
        bool voted;
    }

    Participant[] public participantsArray;

    //the contract deployer and Mainman who is in charge
    address public Mainman;

    constructor(){
        msg.sender == Mainman;
    }

    // adding a person to the wallet
    function addparticipant(address _participant) public {
        require(msg.sender == Mainman);
        participantsArray.push(Participant(_participant, false));
    }

    mapping(address => Participant) public participants;

   
    //adding money and viewing the contract balance
    function addMoney(uint value) public payable{}

    function contractbalance() view public returns(uint){
       return address(this).balance;
    }

    //sending money form the contract
    function sendmoney(uint value, address payable to) public payable{

    }






}