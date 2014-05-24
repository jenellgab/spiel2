class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :avatar
      t.integer :candy_crush
      t.integer :flappy_bird
      t.integer :fruit_ninja
      t.integer :fuse
      t.integer :gbd
      t.integer :iron_pants
      t.integer :minion_rush
      t.integer :piano_tiles
      t.date :published_at
      t.integer :temple_run
      t.integer :twenty
      t.integer :score
      t.string :type
      t.string :message

      t.timestamps
    end
  end
end
