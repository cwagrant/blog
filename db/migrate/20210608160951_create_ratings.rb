class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :rateable_type
      t.integer :rateable_id
      t.integer :rateable_value

      t.timestamps null: false
    end
  end
end
