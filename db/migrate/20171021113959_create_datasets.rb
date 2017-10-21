class CreateDatasets < ActiveRecord::Migration[5.1]
  def change
    create_table :datasets do |t|
      t.references :user, foreign_key: true
      t.references :community, foreign_key: true
      t.string :name
      t.string :documentation
      t.boolean :private
      t.datetime :date_published
      t.datetime :last_updated
      t.float :version

      t.timestamps
    end
  end
end
