class AddLocationModeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :location_mode, :integer
  end
end
