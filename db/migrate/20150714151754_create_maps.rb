class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :author
      t.text :field
      t.references :creator, index: true, foreign_key: true
    end
  end
end
