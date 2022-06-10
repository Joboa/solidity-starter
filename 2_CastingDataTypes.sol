//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;
 
// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract CastingDataTypesContract {
  uint toBig = 250;
  uint8 castedValue = uint8(toBig);
}
