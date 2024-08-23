class CreateWorkOrderParts < ActiveRecord::Migration[7.0]
  def change
    create_table :work_order_parts do |t|
      t.references :part, null: false, foreign_key: true
      t.string :qty
      t.string :amount

      t.timestamps
    end
  end
end
