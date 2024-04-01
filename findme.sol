// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.12 <0.9.0;

contract FindMe {
  string public private_password;
  constructor(string memory _password)  {
    private_password = _password;
    }
  function isCorrectPassword(string memory _password) external view returns (bool) {
    return (keccak256(abi.encodePacked((private_password))) == keccak256(abi.encodePacked((_password))));
    }
}
