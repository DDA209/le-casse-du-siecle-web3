// SPDX-License-Identifier: UNLICENSED 
pragma solidity >=0.8.33 <0.9;

import "../../enums/nftcard/skills.enum.sol";

enum Rarities {
    VeryCommon, // Unlimited NFTs
    Common, // Unlimited NFTs
    Uncommon,
    Rare,
    Epic,
    Legendary,
    Mythic,
    GodLike,
    Promo,
    Partnership,
    Special
}

/// @title Enumeration of abilities
/// @notice If an ability is attached to a card 
/// @dev Structure used to construct NFT card.
/// @return NftCard
enum Abilities {
    none,
    enduring,
    patient,
    agile,
    responsive,
    meticulous,
    cautionary,
    daredevil,
    technologicallySavvy
}

/// @title Ability structure
/// @notice The ability add power to the attached skill 
/// @dev Structure used to define if an ability is present and attached on main skill or secondary skill. If ability is none(0) we don't use it
/// @return Ability
struct Ability {
    Abilities ability;
    bool mainSkillAttached; // Used only if ability != none(0)
}

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