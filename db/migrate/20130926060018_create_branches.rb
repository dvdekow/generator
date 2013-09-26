class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :user_id
      t.string :relationship
      t.string :product_id

      t.timestamps
    end
  end
end
