// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeCast.sol";


contract RealProperty {
    using SafeCast for uint256;

    // Property struct to store infornation about a property
    struct Property {
       uint256 price; // price of the property
       address owner; // owner of the property
       bool forSale; // is the property for sale?
       string name; // name of the property
       string description; // description of the property
       string location; // location of the perperty
    }
    // mapping from property ids to perperty structs
    mapping (uint256 => Property) public properties;

    // Array of all property ids
    uint256[] public propertyIds;

    // Event for when  a property is sold
    event propertySold(uint256 propertyId);

    // Function to list a new property for sale
    function listPropertyForSale(
      uint256 _propertyId, 
      uint256 _price, 
      string memory _name,
      string memory _description,
      string memory _location) public {
       // Create a new peoperty struct and populate its fields
       Property memory newProperty = Property({
         price: _price,
         owner: msg.sender,
         forSale: true,
         name: _name,
         description: _description,
         location : _location
       });

       // Add the new property to the mapping and array of property id
       properties[_propertyId] = newProperty;
       propertyIds.push(_propertyId);
    } 

    // Function to buy a listed property
    function buyProperty(uint256 _propertyId) public payable {
        // Retrieve the property struct from the mapping
        Property storage property = properties[_propertyId];

        // Check that the property is for sale and that the buyer has sufficient founs
        require(property.forSale, "Property is not for sale");
        require(property.price <= msg.value, "Insufficient founds");

        // Transfer ownership of the property to the buyer and make it not for sale
        property.owner = msg.sender;
        property.forSale = false;

        // Transfer the purchase  price to the seller
        payable (property.owner).transfer(property.price);
        // Emit the PropertySold envet
        emit propertySold(_propertyId);

    }

}