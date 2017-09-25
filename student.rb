class Student

  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

  def student_name()
    return @student_name
  end

  def student_cohort()
    return @student_cohort
  end

  def change_student_name(name)
    @student_name = name
  end

  def change_student_cohort(cohort)
    @student_cohort = cohort
  end

  def talk()
    return "I can talk"
  end

  def favourite_language(language)
    return "My favourite language is #{language}!"
  end

end
