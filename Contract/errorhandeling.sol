// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

   


contract errorhandling{

    address owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    error onlyOwner(address owner , address interactor);

    function learnRevert()public view {

        //revert
    //     if ( number == 10 ){
    //         revert("this number is equaal to 10 pls change");
    // }

        //assert 
    //    assert(number !=10);
    
    //  require( number != 10 ,"this is Equal to 10");

    // }

    //coustom error

    if( msg.sender != owner){
        revert onlyOwner({
            owner :owner,
            interactor : msg.sender

        });
    }

    
            
}

}
