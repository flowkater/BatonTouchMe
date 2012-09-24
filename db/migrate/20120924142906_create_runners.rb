class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :mail
      t.string :phone

      t.timestamps
    end
  end
end
