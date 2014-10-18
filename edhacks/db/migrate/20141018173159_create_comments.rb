class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :user_id
    	t.integer :link_id
    	t.text :text
    	t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end
