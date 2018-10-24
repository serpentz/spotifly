class CreatePlaylistUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :song_votes do |t|
    	t.references :song
    	t.references :vote
    end
  end
end
