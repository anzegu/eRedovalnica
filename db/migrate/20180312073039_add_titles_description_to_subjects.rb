class AddTitlesDescriptionToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :title, :string
    add_column :subjects, :description, :text
  end
end
