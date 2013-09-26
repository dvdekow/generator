class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :rproduct_id
      t.string :user_id
      t.string :product_id

      t.timestamps
    end
  end
end
