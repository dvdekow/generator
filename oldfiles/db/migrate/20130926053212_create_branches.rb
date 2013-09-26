class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :user_id
      t.string :action
      t.string :item_id

      t.timestamps
    end
  end
end
