require('minitest/autorun')
require('minitest/rg')
require_relative('./library')

class TestLibrary < MiniTest::Test

  def setup()
    @library = Library.new([
      { title: "Lord of the Rings",
        rental_details: {
          student_name: "Hayley",
          date: "25/10/2017"
        }
      },
      {
        title: "Harry Potter",
        rental_details: {
          student_name: "Dave",
          date: "24/10/2017"
        }
      }
      ])
  end

  def test_library_size()
    assert_equal(2, @library.library_size())
  end

  def test_return_full_library()
    @library.return_full_library()

    assert_equal([
      { title: "Lord of the Rings",
        rental_details: {
          student_name: "Hayley",
          date: "25/10/2017"
          }
        },
      {
        title: "Harry Potter",
        rental_details: {
          student_name: "Dave",
          date: "24/10/2017"
          }
        }
      ], @library.return_full_library())
  end

  def test_return_book()
    assert_equal(
      { title: "Harry Potter",
        rental_details: {
          student_name: "Dave",
          date: "24/10/2017"
          }
        }, @library.return_book("Harry Potter"))
  end

  def test_rental_details()
    assert_equal(
      {
        student_name: "Dave",
        date: "24/10/2017"
      }, @library.rental_details("Harry Potter")
    )
  end

  def test_add_new_book()
    @library.add_new_book({
      title: "Peter Rabbit",
      rental_details: {
        student_name: "",
        date: ""
      }
      })

    assert_equal(3, @library.library_size())
  end

  def test_change_rental_details()
    @library.change_rental_details("Lord of the Rings", "Smithy", "30/10/2017")

    assert_equal({ title: "Lord of the Rings",
      rental_details: {
        student_name: "Smithy",
        date: "30/10/2017"
        }
      }, @library.return_book("Lord of the Rings"))
  end

end
