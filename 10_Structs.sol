//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract StructsContract {
    struct Customer {
        string name;
        string custAddress;
        uint256 age;
    }

    Customer[] public customers;

    function addCustomer(
        string memory n,
        string memory ca,
        uint256 a
    ) public {
        customers.push(Customer(n, ca, a));
    }

    function getCustomer(uint256 _index)
        public
        view
        returns (
            string memory n,
            string memory ca,
            uint256 a
        )
    {
        Customer storage customer = customers[_index];
        return (customer.name, customer.custAddress, customer.age);
    }

    
}
