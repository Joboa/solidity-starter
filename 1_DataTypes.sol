//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract DataTypesContract {
    /*
     * Data types
     **************************************************
     *
     * @public: can be accessible to all contracts
     * @private: can only be called within the contract
     * @internal: can only be accessed by the contract or the
     * the contracts that inherits it.
     *
     * variable names: should start with letters or underscore
     * state variables: are permanently stored on the blockchain
     */

    bool public isMale = true;
    int256 private myAge = 47;
    uint256 internal favNum = 8;
    string myName = "John";
    address owner;

    // uint256: Max size 1.15792089 X 10^77
    // uint8: 2^8 - 1: 255
    // uint16: 2^16 - 1: 65,535
    // uint32: 2^32 - 1: 4,294,967,295
}
