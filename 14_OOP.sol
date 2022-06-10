//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract Shape {
    uint256 height;
    uint256 width;

    // initialize variables
    constructor(uint256 _height, uint256 _width) {
        height = _height;
        width = _width;
    }
}

// Inheritance
contract Square is Shape {
    constructor(uint256 h, uint256 w) Shape(h, w) {}

    function getHeight() public view returns (uint256) {
        return height;
    }

    function getArea() public view returns (uint256) {
        return height * width;
    }
}
