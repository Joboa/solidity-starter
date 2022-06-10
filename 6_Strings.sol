//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Strings.sol";


contract StringsContract {
  // Strings are ASCII characters between single or double
  // quotes. Eg: "Hello" or 'Hello'

  string str = "Hello";

  // memory: temporary store the string
  // it deletes after each function
  function combineStrings(string memory _str1, string memory _str2) public pure returns(string memory) {
    return string(abi.encodePacked(_str1, " ", _str2));
  }


  // working with bytes
  // Bytes save computation time than strings
  function numChars(string memory _str1) public pure returns(uint) {
    bytes memory _byte1 = bytes(_str1);
    return _byte1.length;
  }
}
