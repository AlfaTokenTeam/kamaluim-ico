pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Kamaluim is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Kamaluim(address _owner)  UpgradeableToken(_owner) {
    name = "Kamaluim";
    symbol = "KAM";
    totalSupply = 2000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}