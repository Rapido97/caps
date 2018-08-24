class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
