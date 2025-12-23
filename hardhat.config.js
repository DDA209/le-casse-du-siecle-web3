module.exports = {
	solidity: {
		version: '>=0.8.33 <0.9',
		settings: {
			optimizer: {
				enabled: true, // Active l'optimiseur du compilateur Solidity. L'optimiseur réduit la taille du bytecode et le coût en gas des contrats.
				runs: 200, // Nombre de fois où le code est supposé être executé (*)
			},
		},
	},
};

/*
(*) Ce que runs représente réellement :
runs n'est pas une mesure du nombre de fois qu'un contrat est utilisé par les utilisateurs. Il s'agit d'une estimation du nombre de fois qu'une fonction du contrat sera exécutée pendant sa durée de vie. Le compilateur Solidity utilise cette information pour optimiser le code.

Pourquoi runs est important pour l'optimisation :

Optimisation du code : Le compilateur Solidity peut effectuer des optimisations basées sur l'estimation du nombre de fois qu'une fonction sera exécutée. Par exemple, il peut éliminer certaines vérifications ou simplifier le code si l'estimation est élevée.
Coût en gas : Un nombre plus élevé de runs peut conduire à un bytecode plus petit et à un coût en gas plus faible lors de l'exécution. Cependant, cela peut également augmenter le coût initial lors du déploiement du contrat, car le compilateur effectue plus d'optimisations.
Trade-off : Il existe un compromis entre la taille du bytecode et le coût en gas. Un nombre plus élevé de runs peut conduire à un bytecode plus petit, mais aussi à un coût en gas plus élevé lors de l'exécution.
Comment choisir la valeur de runs :

200 (par défaut) : Un bon point de départ pour la plupart des contrats.
1 : Utile si vous voulez minimiser la taille du bytecode et que le coût en gas lors de l'exécution n'est pas une priorité.
10000 : Utile si vous voulez minimiser le coût en gas lors de l'exécution et que la taille du bytecode n'est pas une priorité. Cela peut être utile pour les contrats qui sont fréquemment utilisés et qui nécessitent une faible latence.
Exemple pour clarifier :

Imaginez un contrat de jeu avec une fonction rollDice(). Si vous pensez que cette fonction sera appelée des milliers de fois pendant la durée de vie du contrat, vous pouvez définir runs: 10000. Cela permettra au compilateur d'effectuer des optimisations plus agressives pour réduire le coût en gas de chaque appel à rollDice().

En résumé :
runs est une estimation du nombre de fois qu'une fonction sera exécutée, utilisée par le compilateur Solidity pour optimiser le code. Le choix de la valeur appropriée dépend des exigences spécifiques de votre projet.
*/
