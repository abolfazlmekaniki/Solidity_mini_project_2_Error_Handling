// SPDX-License-Identifier: MIT

// compare gas fee fro different ErrorHandeling methods.

/*  
    1: if_revert

    2: reqire

    3: assert 


  */


pragma solidity ^0.8.0;


contract Calculator{

    function add_(uint8 a , uint8 b ) public pure returns(uint8){

        if(a-b==100){

            revert("owerflow occured");      // in this method gas fee is : 22477 wei
        }

        assert(a-b==100);  // in this method gas fee is : 22214 wei


        require(a*b>a , " owerflow occured !");  // in this method gas fee is: 22437 wei

        return a+b;

    }

    // so we paid less gas in assert methode .

}
