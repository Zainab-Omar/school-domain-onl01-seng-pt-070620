class School
  attr_accessor :roster, :school_name
  def initialize (school_name)
    @school_name=school_name
    @roster={}
  end
  def add_student(student_name,grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  def grade(student_grade)
    roster[grade]
  end
end