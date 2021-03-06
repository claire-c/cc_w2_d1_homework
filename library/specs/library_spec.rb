require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    @books_array = [  {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
    },
    {
    title: "Crash",
    rental_details: {
     student_name: "Claire",
     date: "27/05/16"
    }
    },
    {
    title: "To Kill A Mockingbird",
    rental_details: {
     student_name: "Mike",
     date: "12/03/18"
    }
    }
    ]
  end

  def test_library_books_getter()
    library_contents = Library.new(@books_array)

    assert_equal(@books_array, library_contents.books())
  end

  def test_return_book_info()
    library_contents = Library.new(@books_array)
    book_details = {
    title: "To Kill A Mockingbird",
    rental_details: {
     student_name: "Mike",
     date: "12/03/18"
      }
    }
    assert_equal(book_details, library_contents.return_book_info("To Kill A Mockingbird"))
  end

  def test_return_book_rental_details()
    library_contents = Library.new(@books_array)
    book_rental_details = {
    student_name: "Mike",
    date: "12/03/18"
      }

    assert_equal(book_rental_details, library_contents.return_book_rental_details("To Kill A Mockingbird"))
  end


  def test_add_book_to_library()
    library_contents = Library.new(@books_array)
    book_title = "Scanners"

    library_contents.add_book_to_library(book_title)
    assert_equal(4, @books_array.length)
  end

  def test_change_book_rental_details()
    library_contents = Library.new(@books_array)
    book_info = {
    title: "Crash",
    rental_details: {
     student_name: "Adam",
     date: "12/03/2018"
    }
  }
    result = library_contents.change_book_rental_details("Crash", "Adam", "12/03/2018")
    assert_equal(book_info, result)
  end

end
