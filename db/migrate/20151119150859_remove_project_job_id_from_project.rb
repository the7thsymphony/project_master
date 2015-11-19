class RemoveProjectJobIdFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :project_job_id, :integer
  end
end
