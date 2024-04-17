// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Adoption {
    // holds the adopters, max 16
    address[16] public adopters;
	uint256 public adoptionPrice = 0.5;

	// need exact amount to adopt because there is no money back method
	function adopt(uint petId) public payable returns (uint) {
		require(petId >= 0 && petId < 16, "Pet ID must be within range 0 to 15");
		require(msg.value == adoptionPrice, "Must send exact adoption price");
		
		adopters[petId] = msg.sender;

		return petId;
	}
	
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
