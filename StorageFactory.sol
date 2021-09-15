// SPDX-License-Identifier: MIT

pragma solidity  >=0.6.0 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{
    
    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 simpleStorageNumber ,uint256 _favoriteNumber) public {
        
        //To get the simple storageAddress
       return SimpleStorage(address(simpleStorageArray[simpleStorageNumber])).store(_favoriteNumber);
    
    }
    
    
    function sfView(uint256 simpleStorageNumber) public view returns (uint256) {
        
        //To get the simple storageAddress
       return SimpleStorage(address(simpleStorageArray[simpleStorageNumber])).retrieve();

    }
    
}