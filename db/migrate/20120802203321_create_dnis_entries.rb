class CreateDnisEntries < ActiveRecord::Migration
  def change
    create_table :dnis_entries do |t|
      t.integer :property_code_id
      t.string :dnis_entry
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
