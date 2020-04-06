require('minitest/autorun')
require('minitest/reporters')
require_relative('../library')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

def setup
    @library = EdinLibrary.new([
        {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }
])

end

    def test_get_book
        assert_equal([{title: "lord_of_the_rings", rental_details: {student_name: "Jeff",
        date: "01/12/16"}}], @library[0])
    end

end