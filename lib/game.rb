class Game
	attr_reader :board
	
	def initialize
		a = [nil , nil, nil]
		b = [nil , nil, nil]
		c = [nil , nil, nil]
		@board = [a, b, c]
	end

	def check_if_possible(selection)
		if selection[0].class == Integer && selection[1].class == Integer
			if @board[selection[0]][selection[1]] != nil
				return false
			else
				return true
			end
		end
		puts "vous ne pouvez pas jouer ca"
		return false
	end

	def play(i, j, tour_joueur)
		if tour_joueur == 1
			@board[i][j] = "X"
		else
			@board[i][j] = "0"
		end
	end

	def check_victory
		3.times do |i|
			if @board[i][0] == board[i][1] && board[i][1] == board[i][2] && @board[i][0] != nil
				return true
			elsif @board[0][i] == board[1][i] && board[1][i] == board[2][i] && @board[0][i] != nil
				return true
			end
		end
		if @board[2][0] == board[1][1] && board[1][1] == board[0][2]  && @board[0][2] != nil
			return true
		elsif @board[0][0] == board[1][1] && board[1][1] == board[2][2] && @board[2][2] != nil
			return true
		else
			return false
		end
	end
end