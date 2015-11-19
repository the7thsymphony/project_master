class Applicant < ActiveRecord::Base
  belongs_to :users
  has_many :jobs
  has_many :project_jobs

  validates :user , presence: true

end
