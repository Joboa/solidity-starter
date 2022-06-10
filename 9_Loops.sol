//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract LoopsContract {
    uint256[] arr1;
    uint256[] public numList = [1, 2, 3, 4];

    function getArrayValues() public view returns (uint256[] memory) {
        return arr1;
    }

    function removeItemByIndex(uint256 _index) public {
        // for loop
        for (uint256 i = _index; i < arr1.length - 1; i++) {
            arr1[i] = arr1[i + 1];
        }
        return numList.pop();
    }

    function sumNums() public view returns (uint256) {
        uint256 _sum = 0;
        // for loop
        for (uint256 i = 0; i < numList.length; i++) {
            _sum += numList[i];
        }
        return _sum;
    }

    function sumNums2() public view returns (uint256) {
        uint256 _i = 0;
        uint256 _sum = 0;
        // while loop
        while (_i < numList.length) {
            _sum += numList[_i];
            _i++;
        }
        return _sum;
    }
}
