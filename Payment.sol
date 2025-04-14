// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Payment{
    uint balance;
function getBalance() public view returns(uint){
    return address(this).balance;
}

function sendBalance() public payable{
    balance=msg.value;
}

receive() external payable{
    
}

function getWithdrawalAmount( ) public {
payable(msg.sender).transfer(address(this).balance);
}
}
