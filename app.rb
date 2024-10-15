require 'bundler' #les deux premieres ligne require/bundler servent à rendre les gems dispo dans tous les fichiers
Bundler.require

require_relative 'lib/game' #les deux lignes require/relative servent à faire appel aux deux autres fichiers dans dossier lib
require_relative 'lib/player'

binding.pry #sert à faire les tests