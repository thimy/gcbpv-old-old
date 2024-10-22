class Teacher < ApplicationRecord
  default_scope { order(created_at: :desc) }

  has_many :courses
  has_many :sessions, through: :courses
  has_many :instruments, through: :courses
  has_many :workshops
  has_many :slots, -> { group 'slot.day' }
  has_one_attached :picture

  TEACHER_STATUSES = ["Actif", "Inactif", "Caché"]

  validates :name, presence: true
  validates :description, presence: true, allow_blank: true

  validates :status, inclusion: { in: TEACHER_STATUSES }

  accepts_nested_attributes_for :slots

  def active?
    status == "Actif"
  end

  def inactive?
    status == "Inactif"
  end
end
