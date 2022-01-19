class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content, null: false 
      t.belongs_to :users, index: true, foreign_key: true, null: false 
      t.timestamps
    end
  end
end