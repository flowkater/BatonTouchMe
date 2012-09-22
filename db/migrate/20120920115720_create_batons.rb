class CreateBatons < ActiveRecord::Migration
  def change
    create_table :batons do |t|
      t.string :taskname
      t.string :phone
      t.text :detail
      t.string :address
      t.date :date
      t.string :time
      t.string :status
      t.string :wish
      t.integer :runner_id

      t.timestamps
    end
  end
end
