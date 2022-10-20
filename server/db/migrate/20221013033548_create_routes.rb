class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.belongs_to :user
      t.string :name_route
      t.string :description
      t.string :repeat  
      t.datetime :date_start
      t.datetime :date_end
      t.boolean :status_route

      t.timestamps
    end
  end
end
