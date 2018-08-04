class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :cin_type
      t.string :cin_code
      t.string :gender
      t.string :phone
      t.string :city
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
