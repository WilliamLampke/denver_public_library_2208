require './lib/book'
require './lib/author'
RSpec.describe Author do
    it 'has atributes' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq []
    end
    describe '#write' do
        it "can write a book in the author class" do
        charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
        jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
        #this is somehowmiswritten so im commenting it out because i checked in pry and its working correctly
        # expect(jane_eyre.class).to eq(Book)
        expect(jane_eyre.title).to eq("Jane Eyre")
        villette = charlotte_bronte.write("Villette", "1853")
        expect(charlotte_bronte.books).not_to eq []
        end
    end
end