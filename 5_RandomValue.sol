//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract RandomValueContract {
    function getRandNum(uint256 _max) public view returns (uint256) {
        uint256 rand = uint256(keccak256(abi.encodePacked(block.timestamp)));
        return rand % _max;
    }
}
