//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract EnumsContract {
    // Enums have number of plausible values

    // enum nameofEnum {0, 1, 2 ...}
    enum shirtSize {
        SMALL,
        MEDIUM,
        LARGE
    }
    shirtSize customerSize;
    shirtSize constant defaultCustomerSize = shirtSize.MEDIUM;

    function pickSmallShirt() public {
        customerSize = shirtSize.SMALL;
    }

    function pickMediumShirt() public {
        customerSize = shirtSize.MEDIUM;
    }

    function pickLargeShirt() public {
        customerSize = shirtSize.LARGE;
    }

    function getShirtSize() public view returns (shirtSize) {
        return customerSize;
    }
}
