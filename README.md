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

- acrescentar repulsão nos limites do mapa
- estabilidade: frustrante -> não sabem porque perderam -> adicionar um Alert, ou a particula treme, ou aviso com mensagem, ou por estabilidade a piscar em vermelho
- quando atingir a 0 de estabilidade ela desintegra-se (por animação)
- existir particulas mistas

	# DONE
- mostrar o Analyze quando estamos próximos (+ mouse-over) e não por clicar - Telma/Gonçalo
- mostrar objetivo no jogo ( por do género de uma seta no player a apontar em diração do objetivo ) - Telma

- diminuir menos estabilidade com as fusões -> voltei a meter -10, já tinha alterado antes baseado nisto - Rafael
- barra do fohg e do yohg serem por níveis -> esqueci-me de fazer para o yohg, agora já está - Rafael
- clarificar a diferença entre as particulas más e as boas -> also done - Rafael
- regen de estabilidade -> also done - Rafael
- clicar no inimigo para atacar -> left click dispara - Rafael
- as energias não são claras para o jogador -> dei nomes elucidativos - Rafael
- existir avisos -> acrescentei mensagens de erro - Gonçalo

- os comandos estão muito confusos : rato + teclado -> já não é preciso teclado
CONTROLOS:
WASD: Movimento
left click em energética = fuse
right click em energética = join
left click em inimiga = shoot
