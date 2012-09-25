class CreateTesters < ActiveRecord::Migration
  def change
    create_table :testers do |t|
      t.string :mail
      t.string :phone
      t.string :advtg

      t.timestamps
    end
  end
end
