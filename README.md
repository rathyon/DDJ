# The First Seconds - TODO LIST

For ease of communication, stability will be referred to as hp

Player\n
\t	-Hp reaches 0: game over, start again
\t	-Remove passive hp regen
\t	-Khir reaches 0: player cannot move
\t	-If key is lifted, no energy should be spent in movement

Fusion
	-Add condition to fuse only if  player size <= target size (size could be in tiers)

Joining
	-Limit number of joined particles by level of Ferr in tiers
	-Ferr defines player size
	-Let's make them spin very slowly
	-Player can fuse with joined particles

Shooting
	-Shooting requires spending Yohg
	-Shooting target is mouse pointer
	-Shoot the nearest particle to the target (player will have to time their shots)
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

"Good" Particles (aka health packs)
	-Going over them restores hp
	-Should be very small particles

"Energetic" Particles
	-Total of 3 types of particles, 1 for each energy type (elementary particles)

Wormholes
	-Transport player if [energy type] requirement is met (could be > 50%)
	-Color wormholes accordingly
	-Level exit wormhole: if player reaches it, level is complete

OPTIONAL
	-Radiation/Energy Fields
