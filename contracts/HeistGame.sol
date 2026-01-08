// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import * as Types from "./HeistTypes.sol";

contract HeistGame{
    // Do something cool
    Types.NftCard public bossCard; // Avec public, le compilateur crée automatiquement une fonction de lecture (getter)
    
    constructor() {
        bossCard = Types.NftCard(
            Types.Rarities.GodLike, // TODO:doit être calculée grace aux skills, cost et fees
            Types.Skills.alarmDeactivater,
            Types.Skills.cyberHacker,
            Types.Ability(
                Types.Abilities.patient, 
                true
                ),
            17700, // TODO: à récupérer dans un tableau de concordence (voir documentation du projet du jeu)
            5 // TODO: à récupérer dans un tableau de concordence (voir documentation du projet du jeu)
        );
    }

}