class CreateVaqueros < ActiveRecord::Migration
  def change
    create_table :vaqueros do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
