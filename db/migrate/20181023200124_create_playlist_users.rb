class CreatePlaylistUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_users do |t|
    	t.references :user
    	t.references :playlist
    end
  end
end
