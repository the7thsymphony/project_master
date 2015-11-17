class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.boolean :hired
      t.integer :rating
      t.string :comment
      t.references :user, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
