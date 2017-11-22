
class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @logic = {
      'rock' => {
        'rock' => 'DRAW!',
        'paper' => 'Player 2 wins with PAPER!',
        'scissors' => 'Player 1 wins with ROCK!'
      },
      'paper' => {
        'paper' => 'DRAW!',
        'scissors' => 'Player 2 wins with SCISSORS!',
        'rock' => 'Player 1 wins with PAPER!'
      },
      'scissors' => {
        'scissors' => 'DRAW!',
        'paper' => 'Player 1 wins with SCISSORS!',
        'rock' => 'Player 2 wins with ROCK!'
      }
    }
  end

  def play
    return @logic[@player1][@player2]
  end

  #def play
  # case [@player1, @player2]
  # when ["rock", "paper"] then return "#{@player2}"
  # when ["rock", "scissors"] then return "#{@player1}"
  # when ["paper", "scissors"] then return "#{@player2}"
  # when ["paper", "rock"] then return "#{@player1}"
  # when ["scissors", "rock"] then return "#{@player2}"
  # when ["scissors", "paper"] then return "#{@player1}"
  # when ["rock", "rock"] then return "draw"
  # when ["paper", "paper"] then return "draw"
  # when ["scissors", "scissors"] then return "draw"
  # end
  #end

end
