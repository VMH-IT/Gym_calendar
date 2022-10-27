class CreateRouteDays < ActiveRecord::Migration[7.0]
  def change
    create_table :route_days do |t|
      t.belongs_to :roupackage
      t.datetime :date
      t.boolean :stause

      t.timestamps
    end
  end
end
