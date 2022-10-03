// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Techs {

    string [] myTechs;

    // CREATE AND ADD A NEW TECHNOLOGY TO OUR ARRAY
    function addTech(string memory techName) public {
        myTechs.push(techName);
    }

    // UPDATE (Return makes the function's output value = true or false, boolean datatype)
    function updateTech(uint techIndex, string memory newTechName) public returns (bool) {
        if(myTechs.length > techIndex) {
            myTechs[techIndex] = newTechName;
            returns true;
        } 
        return false
    }

    // DELETE 
    function deleteTech(uint techIndex) public returns (bool) {

        if(myTechs.length > techIndex) {
            
            for(uint i = techIndex; i < myTechs.length-1; i++) {
                
                myTech[i] = myTechs[i+1];
            }

            myTechs.pop();

            return true;
        }
        return false;
    }

    // READ
    function getTechs() public view returns (string[] memory) {
        return myTechs
    }

}
