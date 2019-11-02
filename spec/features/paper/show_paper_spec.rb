require 'rails_helper'

describe 'Show paper page', type: :feature do

  before(:each) do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
  end

  it 'should visit the page' do
    @paper.authors << @author
    @paper.save
    @author.save
    visit paper_path(@paper)
    expect(page).to have_text('Alan')
  end
end
