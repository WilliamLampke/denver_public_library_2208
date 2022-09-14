require 'pry'
class Author
    attr_reader :name, :books
    def initialize(hash)
        @name = "#{hash[:first_name]} #{hash[:last_name]}"
        @books = []
    end
    def write(book_title, release_date)
        first_and_last = @name.split
        book_hash = {}
        book_hash[:title] = book_title
        book_hash[:publication_date] = release_date
        book_hash[:author_first_name] = first_and_last[0]
        book_hash[:author_last_name] = first_and_last[1]
        book_title = Book.new(book_hash)
        @books << book_title
        binding.pry
    end
end