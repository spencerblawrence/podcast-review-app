class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name, null: false
      t.string :publisher, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end
  end
end
