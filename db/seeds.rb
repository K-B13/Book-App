# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# t.string "name"
#author_id

Author.create(first_name: 'Dr', last_name: 'Seuss', genre: 'Childrens Literature', number_of_books: 44)
Author.create(first_name: 'J. R. R.', last_name: 'Tolkein', genre: 'Fantasy', number_of_books: 18)
Author.create(first_name: 'Stephen', last_name: 'King', genre: 'Horror', number_of_books: 76)

Book.create(name: 'The Cat in the Hat', author_id: 1)
Book.create(name: 'One fish, two fish, red fish, blue fish', author_id: 1)
Book.create(name: 'If I ran the Zoo', author_id: 1)
Book.create(name: 'Lord of the Rings', author_id: 2)
Book.create(name: 'Hobbit', author_id: 2)
Book.create(name: 'IT', author_id: 3)
Book.create(name: 'The Shining', author_id: 3)
Book.create(name: 'The Mist', author_id: 3)

