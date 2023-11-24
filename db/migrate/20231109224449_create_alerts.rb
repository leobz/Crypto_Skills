class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.string :user_id
      t.integer :frequency
      t.string :keyword

      t.timestamps
    end
  end
end
