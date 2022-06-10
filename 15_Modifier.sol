//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract Owner {
    // Modifiers block execution of certain functions
    // unless the entity executing the function is the owner

    address owner;

    constructor() public {
        owner = msg.sender;
    }

    // modifier
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract Purchase is Owner {
    mapping(address => bool) purchasers;
    uint256 price;

    constructor(uint256 _price) {
        price = _price;
    }

    function purchase() public payable {
        purchasers[msg.sender] = true;
    }

    // function funcName(args) modifier {}
    function setPrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}
