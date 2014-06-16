class CreateDefs < ActiveRecord::Migration
  def change
    create_table :defs do |t|
      t.string :uaernm
      t.string :pass

      t.timestamps
    end
  end
end
