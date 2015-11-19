class Job < ActiveRecord::Base
  belongs_to :domain
  has_many :project_jobs
  has_many :applicants, through: :project_jobs
end
