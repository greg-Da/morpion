

class View
	def board_display(game)
		system("clear")
		print "  | A | B | C |"
		3.times do |i|
			puts "\n---------------"
			print "#{i + 1} |"
			3.times do |j|
				if game[i][j] == nil
					print "   |"
				elsif game[i][j] == "X"
					print " X |"
				else
					print " O |"
				end
			end
		end
	end

	def case_nmb(tour_joueur)
		puts
		puts "Au tour du joueur #{tour_joueur}"
		print ">"
		selection = gets.chomp
		if selection =~ /A/i
			j = 0
		elsif selection =~ /B/i
			j = 1
		elsif selection =~ /C/i
			j = 2
		end
		if selection =~ /1/i
			i = 0
		elsif selection =~ /2/i
			i = 1
		elsif selection =~ /3/i
			i = 2
		end
		return [i,j]
	end
end