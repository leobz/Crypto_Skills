class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string  :title
      t.integer :modality
      t.string  :description
      t.integer :salary_timeframe
      t.integer :currency
      t.integer :min_salary
      t.integer :max_salary
      t.string  :website
      t.string  :location
      t.integer :location_mode
      t.integer :skills
      t.integer :category
      t.string  :email

      # Company
      # Note: In case of use the company table, extract these fields and use the following code:
      # t.belongs_to :company, index: true, foreign_key: true
      t.string :company
      t.binary :company_logo
      t.string :company_description
      t.string :company_website

      t.timestamps
    end
  end
end
