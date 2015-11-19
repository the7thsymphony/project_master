class ProjectJob < ActiveRecord::Base
  belongs_to :project
  has_many :applicants
  has_many :jobs

  validates :job, presence: true
  validates :number, presence: true

end
