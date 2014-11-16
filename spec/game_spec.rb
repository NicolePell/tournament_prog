require 'spec_helper'
require './app/models/game'

describe Game do

	context "Demonstration of how datamapper works with game model" do

		it 'should be created and the retreive data from the db' do
			expect(Game.count).to eq(0)
			Game.create(player1_name: "Alex",
						player2_name: "Nicole",
						player_1_score: 21,
						player_2_score: 6)
			expect(Game.count).to eq(1)
			game = Game.first
			expect(game.player1_name).to eq("Alex")
			expect(game.player2_name).to eq("Nicole")
			expect(game.player_1_score).to eq(21)
			expect(game.player_2_score).to eq(6)
		end
	end
end
