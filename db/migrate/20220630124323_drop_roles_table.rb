class DropRolesTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :roles
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
