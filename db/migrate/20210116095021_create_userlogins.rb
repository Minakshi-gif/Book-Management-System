class CreateUserlogins < ActiveRecord::Migration[6.0]
  def change
    create_table :userlogins do |t|
      t.string :username
      t.string :emailid
      t.string :password

      t.timestamps
    end
  end
end
