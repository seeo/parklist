class Rangers < ActiveRecord::Migration[5.2]
  def change
    create_table :rangers do |t|
      t.string :name
      t.references :park
      t.timestamps
end
  end
end
