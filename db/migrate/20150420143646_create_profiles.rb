class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
