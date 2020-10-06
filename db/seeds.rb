book_club_one = BookClub.create(name: "ezLaunchers", location: "5th floor patio")

casi = Member.create(
  first_name: "Casi", 
  last_name: "Newell", 
  email: "casi@ezCater.com", 
  bio: "smarty smart smart" , 
  favorite_book: "Something russian", 
  leader: true, 
  book_club: book_club_one
)

zach = Member.create(first_name: "Zach", last_name: "Martin", email: "zach@ezCater.com", bio: "very sophisticated", favorite_book: "Game of Thrones", leader: false, book_club: book_club_one)
brianna = Member.create(first_name: "Brianna", last_name: "Kincart", email: "brianna@ezCater.com", bio: "she's alright I guess", favorite_book: "The Alchemist", leader: false, book_club: book_club_one)

book_club_two = BookClub.create(name: "Magical Book Club", location: "in your heart all along")
unicorn = Member.create(first_name: "Todd", last_name: "The Chosen Unicorn", email: "todd@ezCater.com", bio: "blessed be", favorite_book: "The Last Unicorn", leader: true, book_club: book_club_two)
