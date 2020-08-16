puts "cleaning up database..."
Book.destroy_all
puts "databse clean!"

100.times do
  book = Book.create(
    name: Faker::Book.title,
    author: Faker::Book.author,
    genre: Faker::Book.genre,
    rating: rand(1..5)
    )
  puts "The book #{book.id} has been created!"
end

puts "Done."
