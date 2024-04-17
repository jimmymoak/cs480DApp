// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Rental{

    address[16] public adopters;

// rent function
    function rent(uint bookId) public returns (uint){
        require(bookId >= 0 && petId <= 15);

        renters[bookId] = msg.sender;

        return bookId;
    }
// retrieve the renters
    function getRenters() public view returns (address[16] memory){
        return renters;
    }

}
