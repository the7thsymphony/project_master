class AddJobIdToProjectJobs < ActiveRecord::Migration
  def change
    add_column :project_jobs, :job_id, :integer
  end
end
