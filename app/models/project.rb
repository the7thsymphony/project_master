class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_jobs
  has_many :messages
  has_many :applicants, through: :project_jobs
  has_many :users, throught: :applicants
end
