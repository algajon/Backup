// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon
contract SimpleStorage 
{
    // This gets initialized to zero
    uint256 public favoriteNumber;

    People public person = People({favoriteNumber: 2, name: "Joni"});
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public favoriteNumbersList;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public 
    {
        favoriteNumber = _favoriteNumber;
        retrieve();
    }
    // view, pure
    function retrieve() public view returns(uint256) 
    {
        return favoriteNumber;
    }
    // calldata, memory, storage are data types
    function addPerson(string memory _name, uint256 _favoriteNumber) public 
    {
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}