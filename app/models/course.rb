class Course < ApplicationRecord
  # association table to link teachers to many instruments
  belongs_to :instrument
  belongs_to :teacher
  has_and_belongs_to_many :seasons
  has_and_belongs_to_many :subscriptions
  has_many :students, through: :subscriptions

  def name
    "#{instrument.name} avec #{teacher.name}"
  end

  def self.suggestions
    Course.all.map { |course| { value: course.id, label: course.name }}
  end

  def self.ransackable_attributes(auth_object = nil)
    ["instrument_id", "teacher_id", "name", "start_time", "end_time"]
  end
end
