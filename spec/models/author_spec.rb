require 'rails_helper'

describe Author, type: :model do

  before(:each) do
    @author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
  end

  it 'Should create and store new author' do
    expect(@author.first_name).to eq('Alan')
    expect(@author.last_name).to eq('Turing')
    expect(@author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it 'should have the full name' do
    expect(@author.name).to eq('Alan Turing')
  end

  it 'should not be valid with empty last name' do
    @author = Author.new(first_name: 'Alan', last_name: '', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(@author).to_not be_valid
  end

end
