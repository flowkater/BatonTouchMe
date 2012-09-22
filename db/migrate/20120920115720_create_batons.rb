class CreateBatons < ActiveRecord::Migration
  def change
    create_table :batons do |t|
      t.string :taskname
      t.string :phone
      t.text :detail
      t.string :address
      t.date :date
      t.string :time
      t.integer :status_id, default: 0
      t.string :wish
      t.integer :runner_id, default: 0
      t.integer :anywork
      t.integer :authkey_id

      t.timestamps
    end
    add_index :batons, :authkey_id
  end
end
