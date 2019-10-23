class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :grade, null: false
      t.text :comment, null: false
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
