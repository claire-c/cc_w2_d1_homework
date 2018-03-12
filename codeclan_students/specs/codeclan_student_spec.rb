require('minitest/autorun')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def test_student_name_getter()
    student = Student.new("Claire", 20)

    assert_equal("Claire", student.student_name())
    assert_equal(20, student.cohort)
  end

  def test_student_name_setter()
    student = Student.new("Claire", 20)
    student.student_name = "Mike"
    student.cohort = 21

    assert_equal("Mike", student.student_name())
    assert_equal(21, student.cohort())
  end

  def test_student_talks()
    student = Student.new("Claire", 20)

    assert_equal("I can talk!", student.talk())
  end

  def test_fave_language()
    student = Student.new("Claire", 20)

    assert_equal("I love Ruby!", student.fave_language("Ruby"))
  end

  
end
