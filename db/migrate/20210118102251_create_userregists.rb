class CreateUserregists < ActiveRecord::Migration[6.0]
  def change
    create_table :userregists do |t|
      t.string :username
      t.string :emailid
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
