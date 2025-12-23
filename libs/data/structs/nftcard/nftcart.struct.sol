// SPDX-License-Identifier: UNLICENSED 
pragma solidity >=0.8.33 <0.9;

import "../../enums/nftcard/skills.enum.sol";
import "../../enums/nftcard/rareties.enum.sol";
import "./ability.struct.sol";

string constant CHAIN = "Ethereum";

/// @title NFT Card structure
/// @notice Each parameter is a element of 
/// @dev Structure used to construct NFT card.
/// @return NftCard
struct NftCard {
    Rarities rarity;
    Skills mainSkill;
    Skills secondarySkill;
    string firstName;
    Ability ability;
}