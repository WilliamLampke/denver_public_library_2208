class Book
  attr_reader :title, :author, :publication_year

  def initialize(hash)
    @title = hash[:title]
    @author = "#{hash[:author_first_name]} #{hash[:author_last_name]}"
    
    @publication_date = hash[:publication_date]

    @publication_year = @publication_date.slice(-4..-1)
  end
end
