class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :user
      t.string :box_1_uid
      t.string :box_2_uid
      t.string :box_3_uid
      t.string :box_4_uid
      t.string :box_5_uid
      t.integer :vote_count

      t.timestamps
    end
    add_index :entries, :user_id
  end
end
