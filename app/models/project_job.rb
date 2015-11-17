class ProjectJob < ActiveRecord::Base
  belongs_to :project
  has_many :applicants
  has_many :jobs, through: :applicants

  validates :job, presence: true
  validates :applicant, presence: true
  validates :number, presence: true

end
