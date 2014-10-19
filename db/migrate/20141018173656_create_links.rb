class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :url
    	t.string :title
    	t.integer :language_id
    	t.integer :user_id
    	t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end
