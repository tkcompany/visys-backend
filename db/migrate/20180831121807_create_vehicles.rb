class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :registration_number
      t.string :vehicle_type
      t.string :type_of_cylinder
      t.string :type_of_horses
      t.string :chassis_code

      t.timestamps
    end
  end
end
