require 'view.rb'
require 'game.rb'
require 'player.rb'

class Controller

	def initialize
		@game = Game.new
		@view = View.new
	end

	def begin_game
		@view.board_display(@game.board)
	end

	def tour_joueur
		tour_joueur = 1
		end_game = false
		turn = 0
		while end_game == false && turn < 9
			end_game = play(tour_joueur)
			tour_joueur == 1 ? tour_joueur = 2 : tour_joueur = 1
			turn += 1
		end
		return [tour_joueur, end_game]
	end

	def play(tour_joueur)
		check_if_possible = false
		while check_if_possible == false
			selection = @view.case_nmb(tour_joueur)
			check_if_possible = @game.check_if_possible(selection)
		end
		@game.play(selection[0], selection[1], tour_joueur)
		@view.board_display(@game.board)
		return @game.check_victory
	end
end