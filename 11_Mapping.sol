//SPDX-License-Identifier: MIT

// Declare the versions of the solidity compiler
pragma solidity >=0.7.0 <0.9.0;

// Used to convert uint to string
// import "@openzeppelin/contracts/utils/Strings/sol";

contract MappingContract {
    /*
     * @mapping: key-value pair
     */

    // mapping (key => value) nameOfMap
    mapping(string => string) public heroes;

    function addHeroes(string memory _secret, string memory _name) public {
        heroes[_secret] = _name;
    }

    function getName(string memory _secret)
        public
        view
        returns (string memory)
    {
        return heroes[_secret];
    }

    function deleteName(string memory _secret) public {
        delete heroes[_secret];
    }

    // Structs and Mapping
    struct Customer {
        string name;
        string custAddress;
        uint256 age;
    }

    /*
     * @mapkey: uint
     * @mapValue: struct (Customer)
     */
    mapping(uint256 => Customer) customer;

    function addCustomer(
        uint256 custID,
        string memory n,
        string memory ca,
        uint256 a
    ) public {
        customer[custID] = Customer(n, ca, a);
    }

    function getCustomer(uint256 _key)
        public
        view
        returns (
            string memory n,
            string memory ca,
            uint256 a
        )
    {
        Customer storage cust = customer[_key];
        return (cust.name, cust.custAddress, cust.age);
    }

    // Nested maps
    /*
     * @key: address
     * @value: map
     */
    mapping(address => mapping(uint256 => Customer)) public myCustomers;

    function addMyCustomers(
        uint256 custID,
        string memory n,
        string memory ca,
        uint256 a
    ) public {
        myCustomers[msg.sender][custID] = Customer(n, ca, a);
    }

    function getMyCustomers(uint256 custID)
        public
        view
        returns (
            string memory n,
            string memory ca,
            uint256 a
        )
    {
        Customer storage myCust = myCustomers[msg.sender][custID];
        return (myCust.name, myCust.custAddress, myCust.age);
    }
}
