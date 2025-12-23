// SPDX-License-Identifier: UNLICENSED 
pragma solidity >=0.8.33 <0.9;

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