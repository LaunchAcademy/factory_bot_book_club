book_club_one = BookClub.create(name: "Launch Weirdos", location: "5th floor patio")

casi = Member.create(first_name: "Casi", last_name: "Newell", email: "casi@ezCater.com", bio: "smarty smart smart" , favorite_book: "Something russian", leader: true)
zach = Member.create(first_name: "Zach", last_name: "Martin", email: "zach@ezCater.com", bio: "very sophisticated", favorite_book: "Game of Thrones", leader: false)
brianna = Member.create(first_name: "Brianna", last_name: "Kincart", email: "brianna@ezCater.com", bio: "she's alright I guess", favorite_book: "The Alchemist", leader: false)

Registration.create(book_club_id: book_club_one.id, member_id: casi.id)
Registration.create(book_club: book_club_one, member: zach)
Registration.create(book_club: book_club_one, member: brianna)
