class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.boolean :downvote
      t.references :song
    end
  end
end
