pragma solidity >=0.4.21 <0.7.0;

contract SimplePonzi{
    address  payable public currentInvester;
    uint public currentInvestment = 0;
    
    function () payable external{
        
        
        uint minimumInvestment = currentInvestment * 11/10;
        require(msg.value > minimumInvestment);
        
        address payable previousInvester = currentInvester;
        currentInvester = msg.sender;
        currentInvestment = msg.value;
        
        previousInvester.transfer(msg.value);
    }
    
}