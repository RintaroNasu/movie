class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.string :genre
      t.string :thoghts
      t.integer :user_id
      t.timestamps
    end
  end
end
