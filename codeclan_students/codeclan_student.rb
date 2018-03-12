class Student

  #attr_accessor :student_name, :cohort
  attr_reader :student_name, :cohort
  attr_writer :student_name, :cohort

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort
end

def talk()
  return "I can talk!"
end

def fave_language(language)
  return "I love #{language}!"
end

end
