class Player # toujours mettre une majuscule pour la classe
    attr_accessor :name, :life_points, :weapon_level #attribut nom et point de vie armement
    
    def initialize(name) #definit la methode pr initialise un joueur av points de vie
    @name = name #chaine de caractere+nom du joueur
    @life_points = 10 #points de vie du joueur = 10
    @weapon_level = 1 # ne pas mettre 0
    end

    def show_state #methode pour initialise l'etat des joueurs
    puts "#{@name} a #{@life_points} points de vie et arme de niveau #{@weapon_level} " #methode pour points de vie restante et une arme de niveau
    end

    def gets_damage(damage_received) #methode pour dommage reçus
    @life_points -= damage_received #points de vies - dommage recus
        if @life_points <= 0 #si les points de vies sont inferieur ou = à 0
      puts "Le joueur #{@name} a été tué !"
        end
    end

    def attacks(player) #methode pour attaquer un autre joueur
    puts "#{@name} attaque #{player.name}"
    damage = compute_damage #dommage = calcul les dommages entre 1 et 6
    puts "Il lui inflige #{damage} points de dommages"
    player.gets_damage(damage)
    end
  
    def compute_damage #affecte compute damage entre 1 et 6
    rand(1..6) * @weapon_level
    end
end

class HumanPlayer < Player
  attr_accessor :weapon_level
    def initialize(name) #definit la methode pr initialise un joueur av points de vie
    @name = name #chaine de caractere+nom du joueur
    @life_points = 100 #points de vie du joueur = 10
    @weapon_level = 1 # ne pas mettre 0
    end
    def search_weapon
        new_weapon_level = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{new_weapon_level}."
        if new_weapon_level > @weapon_level
          @weapon_level = new_weapon_level
          puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
        else
          puts "Merde... elle n'est pas mieux que ton arme actuelle..."
        end
    end

end



