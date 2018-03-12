class CreateUsersSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :users_subjects do |t|

      t.timestamps
    end
  end
end
