class Project < ActiveRecord::Base
  belongs_to :project_job
  belongs_to :user
end
