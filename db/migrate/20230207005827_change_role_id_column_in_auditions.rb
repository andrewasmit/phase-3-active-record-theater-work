class ChangeRoleIdColumnInAuditions < ActiveRecord::Migration[5.2]
  def change
    remove_column :auditions, :belongs_to
    add_column :auditions, :role_id, :integer
  end
end
