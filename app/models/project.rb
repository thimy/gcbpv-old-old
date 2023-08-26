class Project < ApplicationRecord
  has_many :projects, through: :project_instances
end
