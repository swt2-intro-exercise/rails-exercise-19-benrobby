require 'rails_helper'

describe 'Edit paper page', type: :feature do

  before(:each) do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
  end

  it 'should select authors for the paper' do
    visit edit_paper_path(@paper)
    expect(@paper.authors.count).to eq(1)
    find('select[multiple="multiple"]').find(:xpath, 'option[1]').select_option
    find('select[multiple="multiple"]').find(:xpath, 'option[2]').select_option

    find('input[type="submit"]').click
    @paper.reload
    expect(@paper.authors.count).to eq(2)
  end
end
