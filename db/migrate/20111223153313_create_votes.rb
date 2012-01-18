class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.references :entry
      t.text :meta

      t.timestamps
    end
    add_index :votes, :user_id
    add_index :votes, :entry_id
  end
end
