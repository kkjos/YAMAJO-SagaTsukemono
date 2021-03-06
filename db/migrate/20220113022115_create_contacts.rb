class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :telephone_number, null:false
      t.text :message, null:false
      t.boolean :status, null:false, default: false
      t.timestamps
    end
  end
end
