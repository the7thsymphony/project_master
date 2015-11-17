class CreateProjectJobs < ActiveRecord::Migration
  def change
    create_table :project_jobs do |t|
      t.boolean :status
      t.integer :number
      t.references :applicant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
