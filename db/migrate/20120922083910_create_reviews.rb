class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :baton
      t.text :content

      t.timestamps
    end
    add_index :reviews, :baton_id
  end
end
