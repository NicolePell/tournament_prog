require 'spec_helper'
require './app/models/player'

describe Player do

	context "Demonstration of how datamapper works" do

		it 'should be created and the retreive data from the db' do
			expect(Player.count).to eq(0)
			Player.create(name: "Dan",
						games_played: 0,
						games_won: 0,
						points: 0,
						group_assign: "A")
			expect(Player.count).to eq(1)
			player = Player.first
			expect(player.name).to eq("Dan")
			expect(["A", "B", "C", "D"].include? player.group_assign).to be true
		end

	end
end
