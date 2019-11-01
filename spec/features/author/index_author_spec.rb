require 'rails_helper'

describe 'Show all authors page', type: :feature do

  before(:each) do
    visit authors_path
    @alan = FactoryBot.create :author
    @authors = [@alan]
  end

  it 'should contain table headers' do
    expect(page).to have_text('Name', 'Homepage')
  end

  it 'should have a link to create a new author' do
    expect(page).to have_link 'New', href: new_author_path
  end

  it 'should have links to actions for an author' do
    visit authors_path(@authors)
    expect(page).to have_text('Alan', 'Turing')
    expect(page).to have_link 'Show', href: author_path(@alan)
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end

  it 'should delete an author' do
    visit authors_path(@authors)
    expect(Author.count).to eql(1)
    find('a[data-method="delete"]').click
    expect(Author.count).to eql(0)
  end
end
