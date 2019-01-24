require 'controller.rb'

class Router
	
	def initialize
		@controller = Controller.new
	end
	
	def perform
		puts "Bienvenue dans cette partie de morpion"
		puts "Qui est le joueur qui prendra les X ?"
		print ">"
		player1 = gets.chomp
		puts "Bonjour #{player1}"
		puts "Qui est le joueur qui prendra les O ?"
		print ">"
		player2 = gets.chomp
		puts "Bonjour #{player2}"
		puts "Commencons la partie"
		@controller.begin_game
		tab = @controller.tour_joueur

		if tab[1] == true
			puts
			puts "le joueur #{tab[0]} a perdu"
		else
			puts
			puts "Personne n'a gagné, c'est un match nul"
		end
		puts "La partie est finie"
	end
end