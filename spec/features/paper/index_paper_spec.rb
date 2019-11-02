require 'rails_helper'

describe 'Show paper page', type: :feature do

  before(:each) do
    @paper = FactoryBot.create :paper
    @paper1 = FactoryBot.create :paper, :paper1
  end

  it 'should display both papers' do
    visit papers_path
    expect(Paper.count).to eq(2)
    expect(page).to have_text('1950')
    expect(page).to have_text('1968')
  end

  it 'should only show the one for the filtered year' do
    visit papers_path(year: 1950)
    expect(page).not_to have_text('1968')
    expect(page).to have_text('1950')
  end

end
