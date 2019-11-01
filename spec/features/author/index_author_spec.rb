require 'rails_helper'

describe 'Show all authors page', type: :feature do

  before(:each) do
    visit authors_path
  end

  it 'should contain table headers' do
    expect(page).to have_text('Name', 'Homepage')
  end

  it 'should have a link to create a new author' do
    expect(page).to have_link 'New', href: new_author_path
  end
end
