class AddColumnToMembership < ActiveRecord::Migration[5.1]
  def change
    add_column :memberships, :user_id, :integer
    add_column :memberships, :community_id, :integer
  end
end
