//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract FunctionsContract {
    /*
  function funcNam(parameterList) scope returns() {
    statement
  }
  */

    // public: public means the contract will be accessible to all contracts
    // external functions: can't be called by the contract but can be called
    // outside the contract
    // internal functions: are only accessible within the contracts or by other
    // contracts that inherits it.
    // view returns: the function will work with data and will allow to view the
    // results and won't modify the state. It uses variables outside of the function.
    // pure returns: means the performing calculation and returns and also does not
    // deal with state variables.

    // public pure function
    function getSum(uint256 _num1, uint256 _num2)
        public
        pure
        returns (uint256)
    {
        uint256 _mySum = _num1 + _num2;
        return _mySum;
    }

    function getResults() public pure returns (uint256) {
        uint256 a = 5;
        uint256 b = 3;
        uint256 result = a + b;
        return result;
    }

    // state variable
    uint specialVal = 5;

    // external function
    function changeSpecialVal(uint _val) external {
      specialVal = _val;
    }

    // external view function
    function getSV() external view returns(uint) {
      return specialVal;
    }
}
