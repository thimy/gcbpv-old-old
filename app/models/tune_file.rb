class TuneFile < ApplicationRecord
  has_and_belongs_to_many :reports
end
