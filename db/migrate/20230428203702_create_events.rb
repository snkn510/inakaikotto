class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title,     null: false
      t.text :description, null: false
      t.integer :stay_id,  null: false
      t.integer :price,    null: false
      # t.references :user,  null: false, foreign_key: true 
      t.timestamps
    end
  end
end
