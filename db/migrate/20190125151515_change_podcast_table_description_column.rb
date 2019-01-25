class ChangePodcastTableDescriptionColumn < ActiveRecord::Migration[5.2]
  def up
    change_column :podcasts, :description, :text
  end

  def down
    change_column :podcasts, :description, :string
  end
end
