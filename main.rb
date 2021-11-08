require 'active_support/all'
require './player'
require './game'
require './turn'

new_game = Game.new
new_game.play {new_game.new_turn}