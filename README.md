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



# Feedback from Miniclip guys
	
	# TODO

- clicar no inimigo para atacar
- acrescentar repulsão nos limites do mapa
- os comandos estão muit confusos : rato + teclado
- estabilidade: frustrante -> não sabem porque perderam -> adicionar um Alert, ou a particula treme, ou aviso com mensagem, ou por estabilidade a piscar em vermelho
- ir regenerando estabilidade lentamente e quando atingir o 0 ela desintegra-se (por animação)
- as energias não são claras para o jogador -> para que servem?
- barra do fohg e do yohg serem por níveis
- existir avisos: ex-> não pode fundir com a particula porque é maior que nós
- clarificar a diferença entre as particulas más e as boas e existir particulas mistas

	# DONE
- mostrar o Analyze quando estamos próximos (+ mouse-over) e não por clicar
- diminuir menos estabilidade com as fusões   ---> meti a -5 em vez de -10
- mostrar objetivo no jogo ( por do género de uma seta no player a apontar em diração do objetivo )
