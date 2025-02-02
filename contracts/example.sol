// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

import "redstone-flash-storage/lib/contracts/message-based/PriceAware.sol";

contract ExampleContract is PriceAware {

  uint256 private lastPrice = 0;
  
  function setPrice() public {
    uint256 ethPrice = getPriceFromMsg(bytes32("TSLA"));
    lastPrice = ethPrice;
  }

  function getLastPrice() public view returns(uint256) {
    return lastPrice;
  }
}
