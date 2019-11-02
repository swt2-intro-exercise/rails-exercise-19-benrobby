require 'rails_helper'

describe Paper, type: :model do

  it 'should be valid' do
    paper = Paper.new(title: 'p', venue: 'v', year: 1992)
    expect(paper).to be_valid
  end

  it 'should not be valid without a title' do
    paper = Paper.new(title: '', venue: 'v', year: 1992)
    expect(paper).not_to be_valid
  end

  it 'should not be valid without a venue' do
    paper = Paper.new(title: 'a', venue: '', year: 1992)
    expect(paper).not_to be_valid
  end

  it 'should not be valid without a venue' do
    paper = Paper.new(title: 'a', venue: '1')
    expect(paper).not_to be_valid
  end

  it 'should not be valid without a integer year' do
    paper = Paper.new(title: 'a', venue: '1', year: 122.5)
    expect(paper).not_to be_valid
  end

end
