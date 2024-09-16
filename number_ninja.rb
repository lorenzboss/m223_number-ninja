class NumberNinja
  def initialize
    @secret_number = rand(0..10)
  end

  def play
    puts "Willkommen bei NumberNinja! Errate die Zahl zwischen 0 und 10."
    loop do
      print "Gib deine Vermutung ein: "
      guess = gets.chomp.to_i

      if guess == @secret_number
        puts "Glückwunsch! Du hast die Zahl erraten!"
        break
      elsif guess < @secret_number && guess >= 0
        puts "höher!"
      elsif guess > @secret_number && guess <= 10
        puts "niedriger!"
      else
        puts "Bitte gib eine Zahl zwischen 0 und 10 ein!"
      end
    end
  end
end

game = NumberNinja.new
game.play
