class RemoveJobIdFromApplicants < ActiveRecord::Migration
  def change
    remove_column :applicants, :job_id, :integer
  end
end
