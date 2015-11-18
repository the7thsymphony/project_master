class Project < ActiveRecord::Base
  belongs_to :user
  has_many :project_jobs
  has_many :messages
  has_many :applicants, through: :project_jobs
  has_many :users, through: :applicants
  validates :title, presence: true
  validates :description, presence: true
  # validates :localisation, presence: true


  def is_a_valid_status
    # if @applicants.number > 0
    #   @status = "en cours de recrutement"
    # elsif @applicants.number < 0
    #   @status = "en cours de réalisation"
    # end
    # si il y a encore des project_jobs avec status = nil
    #   ajouter erreur
  end

end

