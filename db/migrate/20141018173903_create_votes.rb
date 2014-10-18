class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
	    t.references :user
	    t.integer :votable_id, polymorphic: true
	    t.string :votable_type    

      t.timestamps
    end
  end
end
