require 'spec_helper'

describe Player do

  context "Demonstration of how datamapper works" do

    # This is not a real test, it's simply a demo of how it works
    it 'should be created and then retrieved from the db' do
      # In the beginning our database is empty, so there are no links
      expect(Player.count).to eq(0)
      # this creates it in the database, so it's stored on the disk
      Player.create(:name => "Nicole",
                  :games_played => 0,
                  :games_won => 0,
                  :points => 0)
      # We ask the database how many links we have, it should be 1
      expect(Player.count).to eq(1)
      # Let's get the first (and only) link from the database
      player = Player.first
      # Now it has all properties that it was saved with.
      expect(player.games_played).to eq(0)
      expect(player.name).to eq("Nicole")
      # If we want to, we can destroy it
      player.destroy
      # so now we have no links in the database
      expect(Player.count).to eq(0)
    end

  end

end