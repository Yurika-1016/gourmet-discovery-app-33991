class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :genre_id, null:false, numericality: { other_than: 1 }
      t.integer :prefecture_id, null:false, numericality: { other_than: 1 }
      t.text :address, null:false
      t.integer :age_id, null:false, numericality: { other_than: 1 }
      t.text :text
      t.references :user, null:false, foreign_keys: true
      t.timestamps
    end
  end
end
