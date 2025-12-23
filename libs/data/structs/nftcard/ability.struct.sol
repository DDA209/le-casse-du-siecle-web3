// SPDX-License-Identifier: UNLICENSED 
pragma solidity >=0.8.33 <0.9;

import "../../enums/nftcard/abilities.enum.sol";

/// @title Ability structure
/// @notice The ability add power to the attached skill 
/// @dev Structure used to define if an ability is present and attached on main skill or secondary skill. If ability is none(0) we don't use it
/// @return Ability
struct Ability {
    Abilities ability;
    bool mainSkillAttached; // Used only if ability != none(0)
}