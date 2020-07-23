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
  def grade (student_grade)
    roster[student_grade]
  end
  def sort
    sorted_roster={}
    roster.each do |student_name, grade|
      sorted_roster[grade]=student_name.sort
    end
    sorted_roster
  end
end