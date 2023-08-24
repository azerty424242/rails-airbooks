puts "Cleaning database..."
Reservation.destroy_all
Bookmark.destroy_all
Book.destroy_all
User.destroy_all




puts "Creating users..."
alice = User.create!(
  email:    "alice@example.com",
  password: "password",
  first_name: "Alice",
  last_name: "Caroll"
)


file = File.open(Rails.root.join("db/seeds/users/alice.jpg"))
alice.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")


bob = User.create!(
  email:    "bob@example.com",
  password: "password",
  first_name: "Bob",
  last_name: "Marley"
)

file = File.open(Rails.root.join("db/seeds/users/bob.jpg"))
bob.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")




charlie = User.create!(
  email:    "charlie@example.com",
  password: "password",
  first_name: "Charlie",
  last_name: "Chocolaterie"
)

file = File.open(Rails.root.join("db/seeds/users/charlie.jpg"))
charlie.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")




puts "--------------"
puts "Users created!"






puts "Creating Books....."
puts "---------------"


the_little_prince = Book.create!(
  author_name: 'Antoine de Saint-Exupéry',
  title: "The Little Prince",
  category: "Fiction",
  published_year: 1943,
  description: "A philosophical tale of a young prince who travels the universe, exploring love, friendship, and life.",
  owner: alice,
  price_per_day: 4
)

file = File.open(Rails.root.join("db/seeds/books/the_little_prince.jpg"))
the_little_prince.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")

orwell_1984 = Book.create!(
  author_name: "George Orwell",
  title: "1984",
  category: "Dystopian Fiction",
  published_year: 1949,
  description: "A novel depicting a terrifying future of a totalitarian state and government surveillance.",
  owner: alice,
  price_per_day: 7
)

file = File.open(Rails.root.join("db/seeds/books/1984.jpg"))
orwell_1984.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")

alice_adventure_in_wonderland = Book.create!(
  author_name: "Lewis Carroll",
  title: "Alice's Adventure in Wonderland",
  category: "Fantasy",
  published_year: 1865,
  description: "The whimsical tale of a young girl named Alice who falls down a rabbit hole into a fantastic world.",
  owner: alice,
  price_per_day: 5
)

file = File.open(Rails.root.join("db/seeds/books/alice_wonderland.jpg"))
alice_adventure_in_wonderland.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
dune = Book.create!(
  author_name: "Frank Herbert",
  title: "Dune",
  category: "Science Fiction",
  published_year: 1965,
  description: "An epic saga of politics, religion, and ecology on the desert planet Arrakis.",
  owner: bob,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/dune.jpg"))
dune.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
coding_for_dummies = Book.create!(
  author_name: "Nikhil Abraham",
  title: "Coding for Dummies",
  category: "Non-Fiction",
  published_year: 2014,
  description: "A beginner's guide to understanding the basics of coding, programming languages, and web development.",
  owner: alice,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/coding_dummies.jpg"))
coding_for_dummies.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")

brave_new_world = Book.create!(
  author_name: "Aldous Huxley",
  title: "Brave New World",
  category: "Dystopian Fiction",
  published_year: 1932,
  description: "A vision of a future society driven by technological advancements, leading to moral and ethical dilemmas.",
  owner: bob,
  price_per_day: 6
)

file = File.open(Rails.root.join("db/seeds/books/brave_new_world.jpg"))
brave_new_world.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
romeo_and_juliet = Book.create!(
  author_name: "William Shakespeare",
  title: "Romeo and Juliet",
  category: "Drama/Play",
  published_year: 1597,
  description: "A tragic love story between two young lovers from feuding families in Verona.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/romeo_and_juliette.jpg"))
romeo_and_juliet.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
the_hobbit = Book.create!(
  author_name: "J.R.R. Tolkien",
  title: "The Hobbit",
  category: "Fantasy",
  published_year: 1937,
  description: "A tale of Bilbo Baggins and his adventure with dwarves and the dragon Smaug.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/the_hobbit.jpg"))
the_hobbit.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
to_kill_a_mockingbird = Book.create!(
  author_name: "Harper Lee",
  title: "To Kill a Mockingbird",
  category: "Fiction",
  published_year: 1960,
  description: "A novel about racism and injustice in the Deep South, seen through the eyes of young Scout Finch.",
  owner: charlie,
  price_per_day: 10
)

file = File.open(Rails.root.join("db/seeds/books/to_kill_a_mockingbird.jpg"))
to_kill_a_mockingbird.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
the_catcher_in_the_rye = Book.create!(
  author_name: "J.D. Salinger",
  title: "The Catcher in the Rye",
  category: "Fiction",
  published_year: 1951,
  description: "The story of a teenage boy named Holden Caulfield and his struggles with adolescence and society.",
  owner: alice,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/the_catcher_in_the_rye.jpg"))
the_catcher_in_the_rye.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
pride_and_prejudice = Book.create!(
  author_name: "Jane Austen",
  title: "Pride and Prejudice",
  category: "Romance",
  published_year: 1813,
  description: "A tale of love and class distinctions in the English countryside during the 19th century.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/pride_and_prejudice.jpg"))
pride_and_prejudice.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
frankenstein = Book.create!(
  author_name: "Mary Shelley",
  title: "Frankenstein",
  category: "Gothic Fiction",
  published_year: 1818,
  description: "A novel about Victor Frankenstein, a young scientist who creates a grotesque creature in an unorthodox scientific experiment.",
  owner: charlie,
  price_per_day: 8
)

file = File.open(Rails.root.join("db/seeds/books/frankenstein.jpg"))
frankenstein.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")









puts "Creating reservations..."
Reservation.create!(
  book:       frankenstein,
  renter:      alice,
  begin_date:   "2023-08-22",
  end_date:     "2023-08-23",
  total_price: 8,
  status:     "accepted"
)

Reservation.create!(
  book:        pride_and_prejudice,
  renter:      alice,
  begin_date:   "2023-08-01",
  end_date:     "2023-08-06",
  total_price: 45,
  status:     "refused"
)

Reservation.create!(
  book:        pride_and_prejudice,
  renter:      alice,
  begin_date:   "2023-08-07",
  end_date:     "2023-08-13",
  total_price: 54,
  status:     "accepted"
)


Reservation.create!(
  book:       the_catcher_in_the_rye,
  renter:      bob,
  begin_date:   "2023-02-01",
  end_date:     "2023-05-06",
  total_price: 27,
  status:     "accepted"
)

Reservation.create!(
  book:        to_kill_a_mockingbird,
  renter:      alice,
  begin_date:   "2023-03-01",
  end_date:     "2023-03-10",
  total_price: 90,
  status:     "accepted"
)

Reservation.create!(
  book:       the_catcher_in_the_rye,
  renter:      bob,
  begin_date:   "2022-02-01",
  end_date:     "2022-05-06",
  total_price: 45,
  status:     "refused"
)

Reservation.create!(
  book:        the_hobbit,
  renter:      alice,
  begin_date:   "2023-04-01",
  end_date:     "2023-04-05",
  total_price: 36,
  status:     "accepted"
)

Reservation.create!(
  book:        romeo_and_juliet,
  renter:      alice,
  begin_date:   "2023-04-01",
  end_date:     "2023-04-05",
  total_price: 36,
  status:     "refused"
)

Reservation.create!(
  book:        brave_new_world,
  renter:      alice,
  begin_date:   "2023-05-01",
  end_date:     "2023-05-12",
  total_price: 66,
  status:      "accepted"
)

Reservation.create!(
  book:        brave_new_world,
  renter:      charlie,
  begin_date:   "2023-06-01",
  end_date:     "2023-06-12",
  total_price: 55,
  status:      "accepted"
)





puts "Creating bookmarks..."

Bookmark.create!(user: alice, book: orwell_1984)
Bookmark.create!(user: alice, book: the_little_prince)

Bookmark.create!(user: bob, book: dune)

puts "Bookmarks created!"







puts "Finished!"
