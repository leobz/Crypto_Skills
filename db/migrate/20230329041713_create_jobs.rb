class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :website
      t.belongs_to :company, index: true, foreign_key: true
      t.string :location
      t.date :date
      t.integer :salary
      t.integer :category

      t.timestamps
    end
  end
end
