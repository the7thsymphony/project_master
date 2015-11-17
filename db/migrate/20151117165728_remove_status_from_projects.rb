class RemoveStatusFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :status, :string
  end
end
