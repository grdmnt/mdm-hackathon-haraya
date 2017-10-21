class CreateDatasets < ActiveRecord::Migration[5.1]
  def change
    create_table :datasets do |t|
      t.string :name
      t.string :documentation
      t.datetime :date_published
      t.datetime :last_updated
      t.float :version

      t.timestamps
    end
  end
end
