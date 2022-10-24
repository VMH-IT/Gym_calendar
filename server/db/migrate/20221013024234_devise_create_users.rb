class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :fname,            null: false, default: "" 
      t.string :lname,            null: false, default: ""    
      t.string :weight        
      t.string :height                 
      t.string :phone                      
      t.integer :age             
      t.integer :gender                   

      t.timestamps null: false
    end
    add_index :users, :email,                unique: true
  end
end
