class CreateMembersRoles < ActiveRecord::Migration
  def change
    create_table :members_roles do |t|
      t.references :member, index: true
      t.references :role, index: true

      t.timestamps
    end
  end
end
