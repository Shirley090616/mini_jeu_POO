require 'bundler' #les deux premieres ligne require/bundler servent à rendre les gems dispo dans tous les fichiers
Bundler.require

require_relative 'lib/game' #les deux lignes require/relative servent à faire appel aux deux autres fichiers dans dossier lib
require_relative 'lib/player'

#binding.pry #sert à faire les tests

player1 = Player.new("she") #nouveau joueur
player2 = Player.new("José")

puts "Voici l'état de nos joueurs :"
player1.show_state
player2.show_state

while player1.life_points > 0 && player2.life_points > 0 #repete tant que points 
    #de vie joueur1 superieur à 0 et points de vie joueur2 sup. à 0
    player1.attacks(player2) #joueur 1 attaque joueur2
    break if player2.life_points <= 0 #stop si point de vie joueur2 inferieur
    #ou egal à 0
    player2.attacks(player1) #joueur2 attaque joueur1
  end