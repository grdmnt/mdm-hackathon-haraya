class AddDatafileToDatasets < ActiveRecord::Migration[5.1]
  def change
    add_column :datasets, :datafile, :string
  end
end
