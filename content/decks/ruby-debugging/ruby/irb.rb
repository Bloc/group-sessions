Book = Struct.new(:title)

def find_book(title)
  books = []
  books << Book.new('Well Grounded Rubyist')

  books.find { |b| b.title == title }
end

book = find_book('Well Grounded Rubyist')
p book # This will print our book object

book = find_book('POODR')
p book # This will print nil
