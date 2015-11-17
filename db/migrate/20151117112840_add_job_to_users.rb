class AddJobToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :job, index: true, foreign_key: true
  end
end
