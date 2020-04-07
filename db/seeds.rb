book_club_one = BookClub.create(name: "Launchers", location: "deck 7")
casi = Member.create(first_name: "Casi", last_name: "Newell", email: "casi@gmail.com", bio: "smarty smart smart" , favorite_book: "Something russian", leader: true, book_club: book_club_one )
kerrin = Member.create(first_name: "Kerrin", last_name: "Gillis", email: "kerrin@gmail.com", bio: "styling guru", favorite_book: "Game of Thrones", leader: false, book_club: book_club_one)
brianna = Member.create(first_name: "Brianna", last_name: "Kincart", email: "brianna@gmail.com", bio: "she's alright I guess", favorite_book: "The Alchemist", leader: false, book_club: book_club_one)

book_club_two = BookClub.create(name: "Magical Book Club", location: "in your heart all along")
unicorn = Member.create(first_name: "Nick", last_name: "The Chosen Unicorn", email: "nick@gmail.com", bio: "blessed be", favorite_book: "The Last Unicorn", leader: true, book_club: book_club_two)
