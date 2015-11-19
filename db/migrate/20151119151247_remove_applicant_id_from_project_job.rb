class RemoveApplicantIdFromProjectJob < ActiveRecord::Migration
  def change
    remove_column :project_jobs, :applicant_id, :integer
  end
end
