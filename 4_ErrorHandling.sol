//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract ErrorHandlingContract {
    function doMath(int256 _num1, int256 _num2) public pure returns (int, int, int, int, int, int) {
      
      // Error: Checking division by zero
      // Method 1
      // require(condition, errorMessage)
      require(_num2 != 0, "2nd number cannot be zero");

      // Method 2
      assert(_num2 > 0);

      // Method 3
      if (_num2 < 0) {
        revert("2nd number must be greater than zero");
      }

      int _add = _num1 + _num2;
      int _sub = _num1 - _num2;
      int _mult = _num1 * _num2;
      int _div = _num1 / _num2;
      int _mod = _num1 % _num2;
      int _sqr = _num1 ** 2;

      return (_add, _sub, _mult, _div, _mod, _sqr);
    }
}
