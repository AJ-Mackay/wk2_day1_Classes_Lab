require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../classes_lab_part_a")

class TestStudent < Minitest::Test
  def setup
    @student = Student.new("Paul Mackay", "E37")
  end

  def test_student_name
    assert_equal("Paul Mackay", @student.student_name)
  end

  def test_student_cohort
    assert_equal("E37", @student.student_cohort)
  end

  def test_set_student_name
    name = @student.set_student_name("Zsolt")
    assert_equal("Zsolt", @student.student_name)
  end

  def test_set_cohort
    cohort = @student.set_cohort("E25")
    assert_equal("E25", @student.student_cohort)
  end

  def test_speech
    assert_equal("I can talk!", @student.student_speech)
  end

  def test_favourite_language
    line = @student.favourite_language("Ruby")
    assert_equal("I love Ruby!", line)
  end

end
