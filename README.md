# The First Seconds - TODO LIST

For ease of communication, stability will be referred to as hp

Player
	-"Fuel" based movement

Shooting
	-On collision, if energy type between particles is the same, the target loses hp
	-If energy type is different, target increases in size

"Evil" Particles
	-Composed of one central sprite and tentacle sprites
	-Touching the tentacles reduces player hp
	-When player is near, evil particles shoot lighting in the direction of the player 
	(add a randomized angle factor of the lightning so its not exactly in the direction of the player)
	-Getting hit by lighting reduces hp (possibly also resources)
	-Should be fairly big
	-On "death" should spawn other particles (for now, energetic particles)

"Neutral" Particles
	-Simple particles that have "neutral interactions"
	-Pulling the player towards them
	-Pushing the player away from them (bouncing)
	-Make things fast/slow around their area of influence

Wormholes
	-Transport player if [energy type] requirement is met (could be > 50%)
	-Color wormholes accordingly
	-Level exit wormhole: if player reaches it, level is complete

OPTIONAL
	-Radiation/Energy Fields
