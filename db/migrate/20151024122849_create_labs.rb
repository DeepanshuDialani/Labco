class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :name
      t.string :address
      t.string :logo

      t.timestamps null: false
    end
  end
end
