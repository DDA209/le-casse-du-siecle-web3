// SPDX-License-Identifier: MIT
pragma solidity >=0.8.33 <0.9;

/// ENUMS

/// @title Enumeration of abilities
/// @notice If an ability is attached to a card, if not : 0 (none) is used
/// @dev List of abilities
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

/// @title Enumeration of rareties
/// @notice Rarety is defined from a table of rareties, depends of Skills, cost and fees
/// @dev List of rareties, defined regarding a correspondence table (Contract? URI?)
enum Rarities {
    VeryCommon, // Unlimited NFTs only with an ability
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

/// @title Enumeration of skills
/// @notice Skills are randomly defined from a table of skills, depending of chances of appearence and coherences 
/// @dev List of primary and secondary skills
enum Skills {
    henchman,
    lookout,
    lockPicker,
    explosivesExpert,
    pilot,
    safecracker,
    cyberHacker,
    alarmDeactivater
}

/// #ENUMS

/// STRUCTS

/// @title Ability structure
/// @notice The ability add power to the attached skill 
/// @dev Structure used to define if an ability is present and attached on main skill or secondary skill. If ability is none(0) we don't use it
struct Ability {
    Abilities abilityName;
    bool mainSkillAttached; // Used only if ability != none(0)
}

/// @title NFT Card structure
/// @notice Each parameter describe the card.
/// @dev Structure used to construct NFT card.
struct NftCard {
    Rarities rarity; // 1 octet (uint8)s
    Skills firstSkill; // 1 octet (uint8)
    Skills secondSkill; // 1 octet (uint8)
    Ability ability; // 1 octet (bool) + 1 octet (uint8)
    uint16 cost; // 2 octets max is 26500 Sudz
    uint8 fees; // 1 octet is a percentage 5%, 10% or 20%
    // FRONT PARAMETERS:
    // firstName is in front using Game REST API. We retrieved it with skills, cost and fees
    // lastName same logic as firstName
    // picture same logic as firstName but retrieved with firstName and lastName
    // description same logic as picture
} // total : 8 octets. Il reste 24 octets diponibles pour le slot à 32 octets

/// #STRUCTS
