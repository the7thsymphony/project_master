class ProjectJob < ActiveRecord::Base
  belongs_to :project
  has_many :applicants
end
