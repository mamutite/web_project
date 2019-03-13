class AddNameToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :name, :string
  end
end
