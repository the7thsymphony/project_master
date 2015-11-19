class Job < ActiveRecord::Base
  belongs_to :domain
  has_many :project_jobs
end
