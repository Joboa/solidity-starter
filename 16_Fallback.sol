//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract FallbackContract {
    // A fallback function is an anonymous function that does
    // not take input nor provide output.
    // It's going to execute if no other function  matches
    // the function identifier passed to the contract or
    // if no data is provided with the function call.
    // It executes when the contract receives ether without
    // data as long as it is marked payable.

    mapping(address => uint256) balance;
    event Log(uint256 gas);

    fallback() external payable {
        // gasleft is a global variable
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract TransferToFallback {
    // transfer of ether to different contract

    // Method 1
    function transferFallback(address payable _target) public payable {
        _target.transfer(msg.value);
    }

    // Method 2
    function callFallback(address payable _target) public payable {
        (bool sent, ) = _target.call{value: msg.value}("");
        require(sent, "FAILURE: NOT SENT");
    }
}
