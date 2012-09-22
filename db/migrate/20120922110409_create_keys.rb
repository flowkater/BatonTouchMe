class CreateKeys < ActiveRecord::Migration
  def change
  	create_table :keys do |t|
      t.string :authkey
      t.string :remember_token

      t.timestamps
    end
    add_index :keys, :authkey, unique: true
    add_index :keys, :remember_token
  end
end
