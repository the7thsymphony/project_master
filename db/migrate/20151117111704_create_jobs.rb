class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :domain, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
