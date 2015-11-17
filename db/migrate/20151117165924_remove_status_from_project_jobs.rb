class RemoveStatusFromProjectJobs < ActiveRecord::Migration
  def change
    remove_column :project_jobs, :status, :string
  end
end
