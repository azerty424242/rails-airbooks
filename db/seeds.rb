puts "Cleaning database..."
Reservation.destroy_all
Bookmark.destroy_all
Book.destroy_all
User.destroy_all




puts "Creating users..."
alice = User.new(
  email:    "alice@example.com",
  password: "password",
  first_name: "Alice",
  last_name: "Caroll"
)


file = File.open(Rails.root.join("db/seeds/users/alice.jpg"))
alice.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")


bob = User.new(
  email:    "bob@example.com",
  password: "password",
  first_name: "Bob",
  last_name: "Marley"
)

file = File.open(Rails.root.join("db/seeds/users/bob.jpg"))
bob.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")




charlie = User.new(
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


the_little_prince = Book.new(
  author_name: 'Antoine de Saint-Exupéry',
  title: "The Little Prince",
  category: "Fiction",
  published_year: 1943,
  description: "Antoine de Saint-Exupéry's The Little Prince is a touching exploration of love, loss, and human nature. The narrative follows a young extraterrestrial prince as he travels across different planets, each introducing characters that symbolize various facets of human behavior and society. The timeless tale prompts reflection on relationships, values, and the intangible connections that bind people together. Paired with evocative illustrations by Saint-Exupéry himself, the story gracefully balances childlike wonder with profound philosophical insights, solidifying its position as one of the world's most beloved books.",
  owner: alice,
  price_per_day: 4
)

file = File.open(Rails.root.join("db/seeds/books/the_little_prince.jpg"))
the_little_prince.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
the_little_prince.save

puts"---------------"
puts"First book OK"




orwell_1984 = Book.new(
  author_name: "George Orwell",
  title: "1984",
  category: "Dystopian Fiction",
  published_year: 1949,
  description: "This book offers a chilling vision of a future stifled by totalitarianism and constant surveillance. Set in the bleak landscape of Airstrip One, the narrative delves into the life of Winston Smith, a man quietly rebelling against the omnipresent Big Brother's oppressive regime. With themes of historical revisionism, thoughtcrime, and the restrictive Newspeak language, the novel presents a harrowing tale of suppressed dissent, love, and the human spirit's endurance. It stands as a stark warning about the dangers of unchecked governmental power and remains a compelling commentary on contemporary issues of privacy and freedom.",
  owner: alice,
  price_per_day: 7
)

file = File.open(Rails.root.join("db/seeds/books/1984.jpg"))
orwell_1984.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
orwell_1984.save

alice_adventure_in_wonderland = Book.new(
  author_name: "Lewis Carroll",
  title: "Alice's Adventure in Wonderland",
  category: "Fantasy",
  published_year: 1865,
  description: "This book by Lewis Carroll is a whimsical journey into a fantastical world where the ordinary rules of logic don't apply. The story follows young Alice, who, upon chasing a white rabbit, finds herself in a realm filled with bizarre creatures, from the enigmatic Cheshire Cat to the tempestuous Queen of Hearts. Beyond its enchanting narrative, the tale challenges readers' perceptions of reality, identity, and societal norms. Laden with riddles, satire, and sharp wit, it serves as both a delightful children's story and a clever critique of Victorian society.",
  owner: alice,
  price_per_day: 5
)

file = File.open(Rails.root.join("db/seeds/books/alice_wonderland.jpg"))
alice_adventure_in_wonderland.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
alice_adventure_in_wonderland.save



dune = Book.new(
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
dune.save

coding_for_dummies = Book.new(
  author_name: "Nikhil Abraham",
  title: "Coding for Dummies",
  category: "Non-Fiction",
  published_year: 2014,
  description: "This book presents a thorough and accessible introduction to the world of coding. Aimed at absolute beginners, the book demystifies complex jargon and offers a step-by-step guide to the foundational concepts of programming languages, algorithms, and web development. Throughout its pages, readers will discover practical examples, hands-on exercises, and easy-to-follow explanations, making it an invaluable resource for anyone seeking to embark on their coding journey. Whether you're looking to change careers, enhance your current skills, or simply cultivate a new hobby, it provides the essential knowledge to get started.",
  owner: alice,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/coding_dummies.jpg"))
coding_for_dummies.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
coding_for_dummies.save

brave_new_world = Book.new(
  author_name: "Aldous Huxley",
  title: "Brave New World",
  category: "Dystopian Fiction",
  published_year: 1932,
  description: "The author paints a disturbing portrait of a future society where individuality and free will are sacrificed for societal stability and technological advancement. Set in the World State, the narrative presents a civilization dominated by science and efficiency, where emotions and personal connections are suppressed through genetic engineering and a drug named soma. While its citizens revel in hedonistic pleasures and lack of conflict, the story raises profound questions about the nature of freedom, the cost of progress, and the very essence of what it means to be human. Huxley's dystopia serves as a cautionary tale, exploring the consequences of unchecked technological and social developments.",
  owner: bob,
  price_per_day: 6
)

file = File.open(Rails.root.join("db/seeds/books/brave_new_world.jpg"))
brave_new_world.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
brave_new_world.save

romeo_and_juliet = Book.new(
  author_name: "William Shakespeare",
  title: "Romeo and Juliet",
  category: "Drama/Play",
  published_year: 1597,
  description: "This book is an enduring tale of passionate love and heartbreaking tragedy. Set against the backdrop of the bitter rivalry between the Montagues and Capulets of Verona, the play follows the young lovers Romeo and Juliet as they defy societal expectations and family loyalties in pursuit of their forbidden love. Their clandestine meetings, poetic exchanges, and hasty decisions lead to both moments of bliss and inevitable doom. As the narrative unfolds, Shakespeare masterfully delves into themes of fate, love's intoxicating power, and the destructive nature of feuds. The tale's profound emotional resonance and dramatic climax have solidified its position as one of the most celebrated works in world literature.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/romeo_and_juliette.jpg"))
romeo_and_juliet.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
romeo_and_juliet.save

the_hobbit = Book.new(
  author_name: "J.R.R. Tolkien",
  title: "The Hobbit",
  category: "Fantasy",
  published_year: 1937,
  description: "This book is a captivating adventure set in the enchanting realm of Middle-earth. It chronicles the journey of Bilbo Baggins, a modest hobbit who becomes an unlikely hero. Coaxed into joining a group of dwarves on a quest to reclaim their homeland from the fearsome dragon Smaug, Bilbo encounters trolls, goblins, elves, and other fantastical creatures. Along the way, he stumbles upon a mysterious ring with unexpected powers. Tolkien's narrative, filled with rich world-building, riddles, and songs, emphasizes the themes of friendship, bravery, and the unexpected strength that can be found within even the most unassuming of characters.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/the_hobbit.jpg"))
the_hobbit.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
the_hobbit.save


to_kill_a_mockingbird = Book.new(
  author_name: "Harper Lee",
  title: "To Kill a Mockingbird",
  category: "Fiction",
  published_year: 1960,
  description: "This book is a profound exploration of racial prejudice and moral growth in the American Deep South. Set in the 1930s, the story is narrated by Scout Finch, a young girl observing her father, Atticus Finch, as he defends a black man wrongfully accused of a heinous crime. Through Scout's innocent eyes, readers witness the injustices of a segregated society, the complexities of human nature, and the enduring power of empathy. The Finch family's encounters with their neighbors, friends, and the mysterious Boo Radley offer valuable lessons on understanding, compassion, and standing up for what's right. Lee's novel remains a testament to the complexities of human morality and the potential for goodness in the face of overwhelming prejudice.",
  owner: charlie,
  price_per_day: 10
)

file = File.open(Rails.root.join("db/seeds/books/to_kill_a_mockingbird.jpg"))
to_kill_a_mockingbird.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
to_kill_a_mockingbird.save


the_catcher_in_the_rye = Book.new(
  author_name: "J.D. Salinger",
  title: "The Catcher in the Rye",
  category: "Fiction",
  published_year: 1951,
  description: "This book dives deep into the tumultuous psyche of its protagonist, Holden Caulfield. Navigating the complex landscape of adolescence, Holden grapples with themes of identity, alienation, and the often overwhelming challenges of growing up. As he wanders the streets of New York City, he offers a raw, unfiltered perspective on the world, punctuated by his unique blend of cynicism and naive idealism. From his disdain for phonies to his yearning to protect the innocence of youth, Salinger captures the essence of teenage angst, rebellion, and the universal quest for meaning.",
  owner: alice,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/the_catcher_in_the_rye.jpg"))
the_catcher_in_the_rye.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
the_catcher_in_the_rye.save


pride_and_prejudice = Book.new(
  author_name: "Jane Austen",
  title: "Pride and Prejudice",
  category: "Romance",
  published_year: 1813,
  description: "The readers are transported to the English countryside of the early 19th century, where societal norms, class divisions, and romantic entanglements intertwine. At the heart of the narrative is the spirited Elizabeth Bennet, who, alongside her four sisters, navigates the challenges of love, reputation, and marriage. When the proud Mr. Darcy enters the scene, initial misconceptions give way to a complex dance of understanding and affection. Through witty dialogue, intricate character dynamics, and astute observations on class and society, Austen crafts a timeless tale of love, prejudice, and the human capacity to grow and change.",
  owner: charlie,
  price_per_day: 9
)

file = File.open(Rails.root.join("db/seeds/books/pride_and_prejudice.jpg"))
pride_and_prejudice.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
pride_and_prejudice.save


frankenstein = Book.new(
  author_name: "Mary Shelley",
  title: "Frankenstein",
  category: "Gothic Fiction",
  published_year: 1818,
  description: "This book stands as a monumental work in Gothic fiction, weaving a tale of ambition, responsibility, and the unintended consequences of playing god. Young scientist Victor Frankenstein becomes consumed by his quest to transcend the bounds of nature, ultimately creating a living creature from disparate body parts. However, the result is a grotesque being who is reviled by society and its creator. Abandoned and alone, the creature seeks acceptance and understanding but is met with fear and prejudice at every turn. Shelley's novel delves into the profound moral and ethical dilemmas posed by unchecked scientific progress, raising questions about humanity, creator and creation, and the price of ambition.",
  owner: charlie,
  price_per_day: 8
)

file = File.open(Rails.root.join("db/seeds/books/frankenstein.jpg"))
frankenstein.cover.attach(io: file, filename: "cover.jpg", content_type: "image/jpeg")
frankenstein.save






puts "Creating reservations..."
Reservation.new(
  book:       frankenstein,
  renter:      alice,
  begin_date:   "2023-08-22",
  end_date:     "2023-08-23",
  total_price: 8,
  status:     "accepted"
)

Reservation.new(
  book:        pride_and_prejudice,
  renter:      alice,
  begin_date:   "2023-08-01",
  end_date:     "2023-08-06",
  total_price: 45,
  status:     "refused"
)

Reservation.new(
  book:        pride_and_prejudice,
  renter:      alice,
  begin_date:   "2023-08-07",
  end_date:     "2023-08-13",
  total_price: 54,
  status:     "accepted"
)


Reservation.new(
  book:       the_catcher_in_the_rye,
  renter:      bob,
  begin_date:   "2023-02-01",
  end_date:     "2023-05-06",
  total_price: 27,
  status:     "accepted"
)

Reservation.new(
  book:        to_kill_a_mockingbird,
  renter:      alice,
  begin_date:   "2023-03-01",
  end_date:     "2023-03-10",
  total_price: 90,
  status:     "accepted"
)

Reservation.new(
  book:       the_catcher_in_the_rye,
  renter:      bob,
  begin_date:   "2022-02-01",
  end_date:     "2022-05-06",
  total_price: 45,
  status:     "refused"
)

Reservation.new(
  book:        the_hobbit,
  renter:      alice,
  begin_date:   "2023-04-01",
  end_date:     "2023-04-05",
  total_price: 36,
  status:     "accepted"
)

Reservation.new(
  book:        romeo_and_juliet,
  renter:      alice,
  begin_date:   "2023-04-01",
  end_date:     "2023-04-05",
  total_price: 36,
  status:     "refused"
)

Reservation.new(
  book:        brave_new_world,
  renter:      alice,
  begin_date:   "2023-05-01",
  end_date:     "2023-05-12",
  total_price: 66,
  status:      "accepted"
)

Reservation.new(
  book:        brave_new_world,
  renter:      charlie,
  begin_date:   "2023-06-01",
  end_date:     "2023-06-12",
  total_price: 55,
  status:      "accepted"
)





puts "Creating bookmarks..."

Bookmark.new(user: alice, book: orwell_1984)
Bookmark.new(user: alice, book: the_little_prince)

Bookmark.new(user: bob, book: dune)

puts "Bookmarks created!"







puts "Finished!"
