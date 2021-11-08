class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def switch_player  
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def new_turn
    start = Turn.new(@current_player)
    start.work_flow
    puts "#{@player1.name}: #{@player1.life}/3 vs #{@player2.name}: #{@player2.life}/3"
  end
  
  def play
    while (@current_player.life > 0)
      switch_player
      new_turn
    end

    if (@current_player == @player1)
      puts "#{@player2.name} wins with a score of #{@player2.life}/3"
    else
      puts "#{@player1.name} wins with a score of #{@player1.life}/3"
    end

    puts 'Game over'
  end

end