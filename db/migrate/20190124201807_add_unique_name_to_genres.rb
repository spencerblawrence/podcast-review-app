class AddUniqueNameToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :name, :string, null: false
    add_index :genres, :name, unique: true
  end
end
