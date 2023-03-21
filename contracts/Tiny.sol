// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Tiny is ERC721 {

    address private _owner;
    mapping(address => bool) private _whitelist;
    uint256 private _currentTokenId;

    constructor() ERC721("Tiny", "Tiny") {
        _owner = msg.sender;
        _whitelist[msg.sender] = true;
    }

    function mint(uint256 _amount) public onlyWhitelist {

        for (uint256 i = 0; i < _amount; i++){
            _currentTokenId = _currentTokenId + 1;
            _safeMint(msg.sender, _currentTokenId);
        }
    }

    function addUser(address _user) public onlyOwner{
        _whitelist[_user] = true;
    }

    function removeUser(address _user) public onlyOwner{
        _whitelist[_user] = false;
    }

    modifier onlyWhitelist(){
        require(_whitelist[msg.sender] || msg.sender == _owner, "invalid user");
        _;
    }

    modifier onlyOwner(){
        require(msg.sender == _owner, "invalid owner");
        _;
    }
}
