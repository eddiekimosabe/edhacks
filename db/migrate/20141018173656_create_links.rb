class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :url
    	t.string :title
    	t.string :language

      t.timestamps
    end
  end
end
