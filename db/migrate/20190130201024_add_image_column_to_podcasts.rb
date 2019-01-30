class AddImageColumnToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :image, :string
  end
end
