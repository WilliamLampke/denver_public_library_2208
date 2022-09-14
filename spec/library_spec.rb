require './lib/book'
require './lib/author'
RSpec.describe Library do
    it 'has atributes' do
    dpl = Library.new("Denver Public Library")
    expect(dpl.name).to eq "Denver Public Library"
    expect(dpl.books).to eq []
    expect(dpl.authors).to eq []
    end
end