require('minitest/autorun')
require('minitest/rg')
require_relative('./student')

class TestStudent < MiniTest::Test

  def test_get_student_name()
    student = Student.new("Hayley", 3)

    assert_equal("Hayley", student.student_name())
  end

  def test_get_student_cohort()
    student = Student.new("Hayley", 3)

    assert_equal(3, student.student_cohort)
  end

  def test_change_student_name()
    student = Student.new("Hayley", 3)

    student.change_student_name("Billy")

    assert_equal("Billy", student.student_name())
  end

  def test_change_student_cohort()
    student = Student.new("Hayley", 3)

    student.change_student_cohort(4)

    assert_equal(4, student.student_cohort)
  end

  def test_talk()
    student = Student.new("Hayley", 3)

    assert_equal("I can talk", student.talk)
  end

  def test_favourite_language()
    student = Student.new("Hayley", 3)

    assert_equal("My favourite language is Ruby!", student.favourite_language("Ruby"))
  end

end
