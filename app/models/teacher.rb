class Teacher < ApplicationRecord
  has_many :instrument_classes
  has_many :instruments, through: :instrument_classes
  has_many :workshops
  has_one_attached :picture

  validates :name, presence: true
  validates :description, presence: true, allow_blank: true

  VALID_STATUSES = [
    "active",
    "inactive",
    "hidden"
  ]
  validates :status, inclusion: { in: VALID_STATUSES }

  def active?
    status == "active"
  end

  def inactive?
    status == "inactive"
  end
end
