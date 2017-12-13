require 'pry'

class School
  def initialize(name)
    @school = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    sorted_roster = {}
    @roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    sorted_roster
  end
end
