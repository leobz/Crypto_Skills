class AddCompanyToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :company, :string
  end
end
