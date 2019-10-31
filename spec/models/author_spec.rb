
describe Author, type: :model do

  author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')


  it 'Should create and store new author' do
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it 'should have the full name' do
    expect(author.name).to eq('Alan Turing')
  end

end
