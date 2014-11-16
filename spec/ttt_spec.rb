require 'spec_helper'
require './app/models/ttt'

describe TTT do

  let(:ttt) {TTT.new}

  context 'assigning players to groups evenly' do
    it 'should find group counts' do
      @dan = Player.create(name: "Dan", group_assign: "A")
      @alex = Player.create(name: "Alex", group_assign: "B")
      expect(ttt.group_counts).to eq(a: 1, b: 1, c: 0, d: 0)
    end

    it 'should choose the group with the least people' do
      @dan = Player.create(name: "Dan", group_assign: "A")
      @alex = Player.create(name: "Alex", group_assign: "B")
      @nic = Player.create(name: "Nic", group_assign: "C")
      expect(ttt.group_min).to eq("D")
    end
  end

end
