require 'names'

describe Name do
	let(:name) { Name.new }
	let(:player) {double :player }

	context 'adding players to the tournament' do

		it 'should start with an empty array' do
			expect(name.names).to be_empty
		end

		it 'should be able to add players to an array' do
			expect{name.add(player)}.to change{name.names.count}.by(1) 
		end


	end


end