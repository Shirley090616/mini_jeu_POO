require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# Affichage d'accueil
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "------------------------------------------------"

# Initialisation des joueurs
puts "Quel est ton prénom ?"
user_name = gets.chomp
user = HumanPlayer.new(user_name)

# Création des ennemis
player1 = Player.new("Josiane")
player2 = Player.new("José")
enemies = [player1, player2]

# Boucle de combat
while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  # Affichage de l'état du joueur humain
  user.show_state

  # Menu d'actions
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts "attaquer un joueur en vue :"
  puts "0 - #{player1.name} a #{player1.life_points} points de vie"
  puts "1 - #{player2.name} a #{player2.life_points} points de vie"
  action = gets.chomp

  # Action choisie
  if action == "a"
    user.search_weapon
  elsif action == "s"
    user.search_health_pack
  elsif action == "0"
    user.attacks(player1)
  elsif action == "1"
    user.attacks(player2)
  end

  # Les ennemis ripostent
  puts "Les autres joueurs t'attaquent !"
  enemies.each do |enemy|
    if enemy.life_points > 0
      enemy.attacks(user)
    end
  end
end

# Fin du jeu
puts "La partie est finie"
if user.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
else
  puts "Loser ! Tu as perdu !"
end
