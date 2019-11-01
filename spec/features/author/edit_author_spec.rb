# frozen_string_literal: true

require 'rails_helper'

describe 'Edit author page', type: :feature do

  before(:each) do
    @alan = FactoryBot.create :author
  end

  it 'should render without error' do
    visit edit_author_path(@alan)
  end

  it 'should have fields to update' do
    visit edit_author_path(@alan)
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it 'should update the authors name' do
    visit edit_author_path(@alan)

    expect(@alan.first_name).to eq('Alan')

    page.fill_in 'author[first_name]', with: 'John'
    find('input[type="submit"]').click

    @alan.reload

    expect(@alan.first_name).to eq('John')
  end

end