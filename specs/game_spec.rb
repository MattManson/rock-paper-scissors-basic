require 'minitest/autorun'
require_relative('../models/gamelogic.rb')

class TestGame < Minitest::Test

  def setup

    @result = Game.new("rock", "paper").play
  end

  def testgame
    assert_equal("player2", @game.play)
  end

end
