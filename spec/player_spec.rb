require 'spec_helper'
require './app/models/player'

describe Player do

	before do
		Player.create(name: "Dan",
					games_played: 0,
					games_won: 0,
					points: 0,
					group_assign: "A")
	end

	context "Demonstration of how datamapper works" do

		it 'should be created and the retrieve data from the db' do
			expect(Player.count).to eq(1)
			player = Player.first
			expect(player.name).to eq("Dan")
			expect(["A", "B", "C", "D"].include? player.group_assign).to be true
		end

		it 'should not update group-assign when updating other player fields' do
			player = Player.first
			player.update(games_played: 1)
			expect(player.group_assign).to eq "A"
		end

	end
end
