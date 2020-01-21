class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def student_cohort
    return @cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_speech
    return "I can talk!"
  end

  def favourite_language(favourite_language)
    return "I love #{favourite_language}!"
  end

end
