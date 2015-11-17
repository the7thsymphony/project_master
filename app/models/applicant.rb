class Applicant < ActiveRecord::Base
  has_many :users
  belongs_to :project_jobs

  validates :user , presence: true

end
