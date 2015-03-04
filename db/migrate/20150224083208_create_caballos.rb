class CreateCaballos < ActiveRecord::Migration
  def change
    create_table :caballos do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.belongs_to :vaquero

      t.timestamps
    end
  end
end
