class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :if
      t.string :then
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
