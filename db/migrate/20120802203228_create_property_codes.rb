class CreatePropertyCodes < ActiveRecord::Migration
  def change
    create_table :property_codes do |t|
      t.string :property_code

      t.timestamps
    end
  end
end
