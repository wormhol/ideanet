class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
			t.string :name
			t.string :idea
			t.string :tag
			t.integer :ref_idea		
	
      t.timestamps
    end
  end
end
