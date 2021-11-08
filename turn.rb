class Turn
  
  def initialize(player)
    @number = [rand(1...21), rand(1...21)]
    @player = player
  end

  def question
    puts "#{@player.name}: What does #{@number[0]} plus #{@number[1]} equal?"
  end

  def answer
    @ans = gets.chomp
  end
  
  def result(player)
    if (@number[0] + @number[1] == @ans.to_i)
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      @player.current_life
    end
  end

  def work_flow
    question
    answer
    result(@player)
  end

end