class Report < ApplicationRecord
  belongs_to :session
  has_and_belongs_to_many :tune_files

  accepts_nested_attributes_for :tune_files
  include WithTime
end
