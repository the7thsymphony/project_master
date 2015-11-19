class AddProjectIdToProjectJob < ActiveRecord::Migration
  def change
    add_column :project_jobs, :project_id, :integer
  end
end
