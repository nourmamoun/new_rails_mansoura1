class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :email, null: false, index: { unique: true }
      t.string :phone_number

      t.timestamps
    end
  end
end
