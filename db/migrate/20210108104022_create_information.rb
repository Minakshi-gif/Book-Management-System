class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
    	t.integer "stuid"
    	t.string "stuname"
    	t.string "stuadd"
    	t.string "stuclass"
      t.timestamps
    end
    add_index("information","stuid")
  end
end
