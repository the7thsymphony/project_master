class Applicant < ActiveRecord::Base
  has_many :users
  has_many :jobs
  has_many :project_jobs
  belongs_to :project_jobs

  validates :user , presence: true

end
