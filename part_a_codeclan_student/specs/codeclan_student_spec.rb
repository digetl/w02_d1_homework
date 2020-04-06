require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

    def setup
        @student = CodeClanStudent.new("Dave", "E39")
    end

    def test_get_name
        assert_equal("Dave", @student.student_name)
    end

    def test_get_cohort
        assert_equal("E39", @student.student_cohort)
    end

    def test_update_student__name
        @student.student_name = "Alan"
        assert_equal("Alan", @student.student_name)
    end

    def test_update_student__cohort
        @student.student_cohort = "E40"
        assert_equal("E40", @student.student_cohort)
    end 

    def test_student_can_talk
        talk = "I can talk"
        assert_equal("I can talk", @student.student_can_talk(talk))
    end

    def test_favourite_language
        assert_equal("I love Ruby", @student.favourite_language("Ruby"))
    end




end
