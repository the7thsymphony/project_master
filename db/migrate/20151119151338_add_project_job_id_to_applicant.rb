class AddProjectJobIdToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :project_job_id, :integer
  end
end
