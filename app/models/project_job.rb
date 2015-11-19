class ProjectJob < ActiveRecord::Base

  belongs_to :project
  belongs_to :job
  has_many :applicants

  validates :job, presence: true
  validates :number, presence: true
end
