class Library

attr_reader :books

  def initialize(books)
    @books = books
  end

  def return_book_info(book_title)
    for book in @books
      return book if book[:title] == book_title
    end
  end

  def return_book_rental_details(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
  end

  def add_book_to_library(book_title_to_add)

    added_book = {
       title: "",
       rental_details: {
        student_name: "",
        date: ""
         }
       }

    for book in @books
      book_not_in_library = true if book[:title] != book_title_to_add
    end

    added_book[:title] << book_title_to_add if book_not_in_library == true

    @books << added_book

  end

  def change_book_rental_details(book_title, lendee, date_due)

    amend_details = return_book_rental_details(book_title)

    amend_details[:student_name] = lendee
    amend_details[:date] = date_due

    return_book_info(book_title)
  end

end
