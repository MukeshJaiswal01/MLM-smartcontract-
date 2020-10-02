pragma solidity >=0.4.21 <0.7.0;
//this is a simple contract
contract SimplePonzi{
    address  payable private currentInvester;
    uint private currentInvestment = 0;
    
    function () payable external{
        
        
        uint minimumInvestment = currentInvestment * 11/10;
        require(msg.value > minimumInvestment);
        
        address payable previousInvester = currentInvester;
        currentInvester = msg.sender;
        currentInvestment = msg.value;
        
        previousInvester.transfer(msg.value);
    }
    
}
