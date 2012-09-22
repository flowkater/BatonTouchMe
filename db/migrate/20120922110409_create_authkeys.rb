class CreateAuthkeys < ActiveRecord::Migration
  def change
  	create_table :authkeys do |t|
      t.string :authkey
      t.string :genkeys
      t.string :remember_token

      t.timestamps
    end
    add_index :authkeys, :authkey, unique: true
    add_index :authkeys, :remember_token
  end
end
