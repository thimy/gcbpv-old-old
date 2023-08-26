class ProjectInstances < ApplicationRecord
  belongs_to :project
  belongs_to :season
end
