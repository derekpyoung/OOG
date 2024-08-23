class CreateLabors < ActiveRecord::Migration[7.0]
  def change
    create_table :labors do |t|
      t.references :work_order, null: false, foreign_key: true
      t.string :labor_hours
      t.string :rate_per_hour
      t.string :total_labor_cost

      t.timestamps
    end
  end
end
