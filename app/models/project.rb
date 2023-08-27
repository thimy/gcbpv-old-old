class Project < ApplicationRecord
  has_many :project_instances
  has_many :seasons, through: :project_instances
end
