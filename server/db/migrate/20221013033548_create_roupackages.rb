class CreateRoupackages < ActiveRecord::Migration[7.0]
  def change
    create_table :roupackages do |t|
      t.belongs_to :user
      t.string :name_roupackage
      t.string :description
      t.string :repeat  
      t.datetime :date_start
      t.datetime :date_end
      t.boolean :status_roupackage

      t.timestamps
    end
  end
end
