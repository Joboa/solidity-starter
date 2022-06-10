//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract ArraysContract {
    uint256[] arr1;
    uint256[10] arr2;
    uint256[] public numList = [1, 2, 3];

    function addToArray(uint256 num) public {
        arr1.push(num);
    }

    function removeFromArray() public {
        arr1.pop();
    }

    function getLength() public view returns (uint256) {
        return arr1.length;
    }

    function setIndexToZero(uint256 _index) public {
        delete arr1[_index];
    }

    function removeItemByIndex(uint256 _index) public {
        for (uint256 i = _index; i < arr1.length - 1; i++) {
            arr1[i] = arr1[i + 1];
        }
        return numList.pop();
    }

    function getArrayValues() public view returns(uint[] memory){
      return arr1;
    }

    function sumNums() public view returns(uint) {
        uint _sum = 0;
        for (uint i = 0; i < numList.length; i++) {
            _sum += numList[i];
        }
        return _sum;
    }
}
