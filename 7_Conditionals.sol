//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Strings.sol";

contract ConditionalsContract {
  // Comparison Operators: ==, !, =>, <=, <, >
  // Logical Operators: &&, ||, !

  uint age = 23;

  function whatSchool() public view returns(string memory) {
    if (age < 5) {
      return "stay home";
    } else if (age >= 5 && age <= 6) {
      return "go to Kindergateen";
    } else if (age >= 6 && age <= 17) {
      uint _grade = age - 5;
      string memory _gradeStr = Strings.toString(_grade);
      return string(abi.encodePacked("Grade", _gradeStr));
    } else {
      return "go to college";
    }
  }
}
