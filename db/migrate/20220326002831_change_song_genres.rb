class ChangeSongGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :song_genres, :genre_id, :integer
    remove_column :song_genres, :artist_id, :integer
  end
end
