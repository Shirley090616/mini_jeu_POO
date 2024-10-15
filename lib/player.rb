class player
    attr_accessor :name, :life_points

    def initialize(name) #definit la methode pr initialise un joueur av points de vie
    @name = name #chaine de caractere+nom du joueur
    @life_points = 10 #points de vie du joueur = 10
    end
end