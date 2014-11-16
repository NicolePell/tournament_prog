require 'spec_helper'

feature 'the winners from the group stages' do

  scenario 'players can view the semi-final results on the results page' do
    visit '/finals'
    expect(page).to have_content 'Semi-final Results'
  end

  scenario 'the winner from group A plays the runner up from group B' do

  end
end
