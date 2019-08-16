class RenameDoseDescriptionToMeasurement < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :description, :measurement
  end
end
