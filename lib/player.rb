class Player # toujours mettre une majuscule pour la classe
    attr_accessor :name, :life_points
    @@player_count = 0

    def initialize(name) #definit la methode pr initialise un joueur av points de vie
    @name = name #chaine de caractere+nom du joueur
    @life_points = 10 #points de vie du joueur = 10
    end

    def show_state #methode pour initialise l'etat des joueurs
    puts "#{@name} a #{@life_points} points de vie" #methode pour points de vie restante
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
    rand(1..6)
    end
end

