class Applicant < ActiveRecord::Base
  has_many :users
  belongs_to :job
  belongs_to :project_jobs
end
