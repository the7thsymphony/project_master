class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_jobs
  has_many :messages
  has_many :applicants, through: :project_jobs
  has_many :users, throught: :applicants


  validates :title, presence: true
  validates :description, presence: true
  validates :localisation, presence: true

end
