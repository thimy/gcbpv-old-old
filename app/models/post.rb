class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ["Privé", "Public", "Archivé"]
  validates :status, presence: true, inclusion: { in: VALID_STATUSES }

  belongs_to :event, optional: true
  belongs_to :category, optional: true
  has_and_belongs_to_many :category

  def public?
    status == "Public"
  end

  def archived?
    status == "Archivé"
  end
end
